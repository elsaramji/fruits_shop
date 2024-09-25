// service/state/sginup_state.dart
part of 'sginup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSuccess extends SignupState {
  final Users user;
  SignupSuccess(this.user);
}

class SignupError extends SignupState {
  final String message;
  SignupError(this.message);
}
