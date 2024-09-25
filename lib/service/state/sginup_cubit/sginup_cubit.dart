// service/state/sginup_cubit/sginup_cubit.dart
import 'package:bloc/bloc.dart';

import 'package:fruits_shop/core/models/users.dart';
import 'package:fruits_shop/core/injection/Git_it.dart';
import 'package:fruits_shop/service/auth/auth_repo.dart';
import 'package:fruits_shop/service/firebase/auth/auth_service.dart';
import 'package:meta/meta.dart';

part 'sginup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  final auth = getIt.get<AuthRepo>(); 

  Future<void>  signup(
      {required String email,
      required String password,
      required String name}) async {
    emit(SignupLoading());
    final result = await auth.createEmailWithemailandpassword(
        email: email, password: password, name: name);
    result.fold(
      (l) => emit(SignupError(l.errormassage())),
      (r) => emit(SignupSuccess(r)),
    );
  }
}
