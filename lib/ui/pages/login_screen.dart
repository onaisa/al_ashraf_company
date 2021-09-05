import 'package:alashraf/controller/bloc/login_bloc.dart';
import 'package:alashraf/models/loginmodle.dart';
import 'package:alashraf/service.dart/services.dart';
import 'package:alashraf/ui/component/component.dart';
import 'package:alashraf/ui/pages/wherehous_screen.dart';
import 'package:alashraf/ui/pages/intropage_screen.dart';
import 'package:alashraf/ui/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailContriller = TextEditingController();

  TextEditingController passwordContriller = TextEditingController();

  bool secur = false;
  AuthService authService;
  LoginBloc _loginBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => _loginBloc = LoginBloc(authService),
        child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('assets/images/logo.png')),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('تسجيل الدخول ',
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.headline4),
                  SizedBox(height: 15.0),
                  Form(
                      child: Column(
                    children: [
                      defaultFormField(
                          controller: emailContriller,
                          label: ' الإيميل',
                          prefix: Icons.email,
                          validate: 'الرجاء إدخال الإيميل',
                          type: TextInputType.emailAddress),
                      SizedBox(
                        height: 15.0,
                      ),
                      defaultFormField(
                          isPassword: secur,
                          suffix: IconButton(
                              onPressed: () {
                                setState(() {
                                  secur = !secur;
                                });
                              },
                              icon: secur == false
                                  ? Icon(Icons.visibility, color: Colors.red)
                                  : Icon(Icons.visibility_off,
                                      color: Colors.red)),
                          controller: passwordContriller,
                          label: 'كلمة المرور',
                          prefix: Icons.lock,
                          validate: 'الرجاء إدخال كلمة المرور',
                          type: TextInputType.visiblePassword),
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  )),
                  Center(
                      child: defaultButton(
                          function: () {
                            navigateTo(context, Wherhouses());
                            _loginBloc.add(LoginUserEvent(
                                model: LoginModel(
                              email: emailContriller.text,
                              password: passwordContriller.text,
                            )));
                          },
                          text: 'تسجيل الدخول')),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        defaultTextButton(
                            function: () {
                              navigateTo(context, SignUpScreen());
                            },
                            text: 'إنشاء حساب'),
                        Text('هل أنت زائر جديد ؟ '),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
