import 'package:alashraf/ui/component/component.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: MyDrawer(context),
        appBar: AppBar(
          centerTitle: true,
          title: Text('شركة الأشرف'),
        ),
        body: Center(
          child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/logo.png')),
        ));
  }
}
