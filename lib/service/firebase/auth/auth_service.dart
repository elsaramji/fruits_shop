// service/firebase/auth/auth_service.dart
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruits_shop/core/errors/failure.dart';
import 'package:fruits_shop/core/models/users.dart';
import 'package:fruits_shop/service/auth/auth_repo.dart';
import 'package:fruits_shop/service/firebase/handle/database_control/add_users_tobase.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../handle/exception/auth_exception.dart';

// Auth Service Class For Firebase
class FirebaseAuthService extends AuthRepo {
  // sign up with email and password
  @override
  Future<Either<Failure, Users>> createEmailWithemailandpassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      // credential value
      final credential =
          // create user with email and password in firebase
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // add user to fireStore database
      AddUsersTobase.addUsersTobase(credential, name: name);

      // return user credential  from firebase
      return right(Users.fromFirebase(credential.user!));
    }
    // catch firebase auth exception
    on FirebaseAuthException catch (e) {
      // return firebase auth exception
      return AuthException.firebaseAuthExceptionHandel(e);
    }
    // catch unknown exception
    catch (e) {
      log("$e");
      // return unknown exception and failure
      return left(Failure("خطأ غير متوقع"));
    }
  }

  // sign in with email and password
  @override
  Future<Either<Failure, Users>> signInWithEmailandpassword(
      {required String email, required String password}) async {
    try {
      // credential value
      final credential = await FirebaseAuth.instance
          // sign in with email and password in firebase
          .signInWithEmailAndPassword(email: email, password: password);
      // return user credential from firebase
      return right(Users.fromFirebase(credential.user!));
    }
    // catch firebase auth exception
    on FirebaseAuthException catch (e) {
      log("${e.code}");

      // return firebase auth exception
      return AuthException.firebaseAuthExceptionHandel(e);
    }
    // catch unknown exception
    catch (e) {
      log("$e");
      // return unknown exception and failure
      return left(Failure("خطأ غير متوقع"));
    }
  }

  // sign in with google
  @override
  Future<Either<Failure, Users>> signinWithGoogle() async {
    try {
      // sign in with google in firebase
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // get google auth
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // get credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      // sign in with credential
      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      // add user to fireStore database
      AddUsersTobase.addUsersTobase(userCredential);

      return right(Users.fromFirebase(userCredential.user!));
    }
    // catch firebase auth exception
    on FirebaseAuthException catch (e) {
      return AuthException.firebaseAuthExceptionHandel(e);
    }
  }

  // sign in with facebook
  @override
  Future<Either<Failure, Users>> signinWithFacebook() async {
    try {
      // sign in with facebook
      final LoginResult loginResult = await FacebookAuth.instance.login();
      // get facebook credential
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      // sign in with credential
      final userCredential = await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);

      // add user to fireStore database
      AddUsersTobase.addUsersTobase(userCredential);

      // return user from firebase
      return right(Users.fromFirebase(userCredential.user!));
    }
    // catch firebase auth exception
    on FirebaseAuthException catch (e) {
      return AuthException.firebaseAuthExceptionHandel(e);
    }
  }

  // sign in with apple for apple device only
  @override
  Future<Either<Failure, Users>> signinWithApple() async {
    return left(Failure("سوف يتم تفعيله في وقت لاحق"));
  }
}
