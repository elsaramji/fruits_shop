// service/state/sginin_cubit/siginin_cubit_state.dart
part of 'siginin_cubit_cubit.dart';

@immutable
abstract class SigininCubitState {}

class SigininCubitInitial extends SigininCubitState {}

class SigininCubitLoading extends SigininCubitState {}

class SigininCubitSuccess extends SigininCubitState {
  final Users user;
  SigininCubitSuccess(this.user);
}

class SigininCubitError extends SigininCubitState {
  final String error;
  SigininCubitError(this.error);
}
