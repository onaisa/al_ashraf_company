part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginUserEvent extends LoginEvent {
  final LoginModel model;
  LoginUserEvent({this.model});
}
