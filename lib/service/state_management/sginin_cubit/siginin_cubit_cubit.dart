// service/state_management/sginin_cubit/siginin_cubit_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:fruits_shop/core/models/user_entity.dart';

import 'package:meta/meta.dart';

import '../../firebase/auth/auth_service.dart';

part 'siginin_cubit_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.auth) : super(SigininInitial());

  final FirebaseAuthService auth;
  Future<void> signInWithemailandpassword(
      {required String email, required String password}) async {
    emit(SigninLoading());
    final result =
        await auth.signInWithEmailandpassword(email: email, password: password);
    result.fold((l) {
      emit(SigninError(l.message));
    }, (r) {
      emit(SigninSuccess(r));
    });
  }

  Future<void> signinWithGoogle() async {
    final result = await auth.signinWithGoogle();
    result.fold((l) {
      emit(SigninError(l.message));
    }, (r) {
      emit(SigninSuccess(r));
    });
  }

  Future<void> signinWithFacebook() async {
    final result = await auth.signinWithFacebook();
    result.fold((l) {
      emit(SigninError(l.message));
    }, (r) {
      emit(SigninSuccess(r));
    });
  }

  Future<void> signinWithApple() async {
    final result = await auth.signinWithApple();
    result.fold((l) {
      emit(SigninError(l.message));
    }, (r) {
      emit(SigninSuccess(r));
    });
  }
}
