import 'dart:async';

import 'package:alashraf/models/loginmodle.dart';
import 'package:alashraf/models/usersmodel.dart';
import 'package:alashraf/service.dart/services.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthService authService;

  LoginBloc(this.authService) : super(LoginInitial());

  UserModel userModel;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginUserEvent) {
      yield LoginLodingState();
      try {
        userModel = await authService.authUser(event.model);
        LoginSuccessState(userModel);
      } catch (e) {
        LoginErrorState(e.toString());
      }
    }
  }
}
