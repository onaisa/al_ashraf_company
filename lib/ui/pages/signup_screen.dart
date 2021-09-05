import 'package:alashraf/ui/component/component.dart';
import 'package:alashraf/ui/pages/wherehous_screen.dart';

import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailContriller = TextEditingController();

  TextEditingController passwordContriller = TextEditingController();

  TextEditingController nameContriller = TextEditingController();

  TextEditingController poneContriller = TextEditingController();

  bool secur = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/images/logo.png')),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'إنشاء حساب',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 10.0,
              ),
              Form(
                  child: Column(
                children: [
                  defaultFormField(
                      controller: nameContriller,
                      label: 'الاسم',
                      prefix: Icons.person,
                      validate: 'الرجاء إدخال الاسم كاملا',
                      type: TextInputType.name),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                      controller: emailContriller,
                      label: "الإيميل",
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
                              : Icon(Icons.visibility_off, color: Colors.red)),
                      controller: passwordContriller,
                      label: 'كلمة المرور',
                      prefix: Icons.lock,
                      validate: 'الرجاءإدخال كلمة المرور',
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
                      },
                      text: 'تسجيل')),
            ],
          ),
        ),
      ),
    );
  }
}
