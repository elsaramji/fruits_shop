// service/state/sginin_cubit/siginin_cubit_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:fruits_shop/core/injection/Git_it.dart';
import 'package:fruits_shop/core/models/users.dart';
import 'package:fruits_shop/service/auth/auth_repo.dart';
import 'package:meta/meta.dart';

part 'siginin_cubit_state.dart';

class SigininCubitCubit extends Cubit<SigininCubitState> {
  SigininCubitCubit() : super(SigininCubitInitial());

  final auth = getIt<AuthRepo>();

  Future<void> signInWithemailandpassword(
      {required String email, required String password}) async {
    emit(SigininCubitLoading());
    final result =
        await auth.signInWithEmailandpassword(email: email, password: password);
    result.fold((l) {
      emit(SigininCubitError(l.message));
    }, (r) {
      emit(SigininCubitSuccess(r));
    });
  }
}
