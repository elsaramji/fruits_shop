// service/auth/auth_repo.dart

import 'package:dartz/dartz.dart';
import 'package:fruits_shop/core/errors/failure.dart';

import '../../core/models/users.dart';

abstract class AuthRepo {
  Future<Either<Failure, Users>> createEmailWithemailandpassword(
      {required String email, required String password, required String name});

  Future<Either<Failure, Users>> signInWithEmailandpassword(
      {required String email, required String password});

  Future<Either<Failure, Users>> signinWithGoogle();
  Future<Either<Failure, Users>> signinWithFacebook();
  Future<Either<Failure, Users>> signinWithApple();
}
