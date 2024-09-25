// service/firebase/auth/auth_service.dart
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:fruits_shop/core/errors/failure.dart';
import 'package:fruits_shop/core/models/users.dart';
import 'package:fruits_shop/service/auth/auth_repo.dart';

class FirebaseAuthService extends AuthRepo {
  @override
  Future<Either<Failure, Users>> createEmailWithemailandpassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      credential.user!.updateDisplayName(name);
      return right(Users.fromFirebase(credential.user!));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return left(Failure('كلمة المرور ضعيفة'));
      } else if (e.code == 'email-already-in-use') {
        return left(Failure('البريد الالكتروني مستخدم مسبقا'));
      } else if (e.code == 'invalid-email') {
        return left(Failure('البريد الالكتروني غير صالح'));
      } else if (e.code == 'network-request-failed') {
        return left(Failure('فشل الاتصال بالشبكة'));
      } else {
        return left(Failure("خطأ غير متوقع"));
      }
    }
  }

  @override
  Future<Either<Failure, Users>> signInWithEmailandpassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return right(Users.fromFirebase(credential.user!));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(Failure('البريد الالكتروني غير موجود'));
      } else if (e.code == 'wrong-password') {
        return left(Failure('كلمة المرور غير صحيحة'));
      } else if (e.code == 'network-request-failed') {
        return left(Failure('فشل الاتصال بالشبكة'));
      } else {
        return left(Failure("خطأ غير متوقع"));
      }
    }
  }     
}
