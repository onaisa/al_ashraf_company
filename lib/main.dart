import 'package:alashraf/ui/pages/intropage_screen.dart';
import 'package:alashraf/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: MyDarkThem(),
      themeMode: ThemeMode.dark,
      home: IntroPage(),
    );
  }
}

