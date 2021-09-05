part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLodingState extends LoginState {}

class LoginSuccessState extends LoginState {
  final UserModel userModel;
  LoginSuccessState(this.userModel);
}

class LoginErrorState extends LoginState {
  final String message;
  LoginErrorState(this.message);
}
