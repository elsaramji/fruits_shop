// service/Apis/firebase/handle/exception/auth_exception.dart

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_shop/core/errors/failure.dart';

import '../../../../../core/models/users.dart';

class AuthException {
  static Either<Failure, Users> firebaseAuthExceptionHandel(
      FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      return left(Failure('كلمة المرور ضعيفة'));
    } else if (e.code == 'email-already-in-use') {
      return left(Failure('البريد الالكتروني مستخدم مسبقا'));
    } else if (e.code == 'invalid-email') {
      return left(Failure('البريد الالكتروني غير صالح'));
    } else if (e.code == 'network-request-failed') {
      return left(Failure('فشل الاتصال بالشبكة'));
    } else if (e.code == 'user-not-found') {
      return left(Failure('البريد الالكتروني غير موجود'));
    } else if (e.code == 'wrong-password') {
      return left(Failure('كلمة المرور غير صحيحة'));
    } else if (e.code == 'network-request-failed') {
      return left(Failure('فشل الاتصال بالشبكة'));
    } else {
      log("${e.code}");
      return left(Failure("خطأ غير متوقع"));
    }
  }
}
