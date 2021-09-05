import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData MyDarkThem() => ThemeData(
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderSide: BorderSide(
                // color: Colors.white,
                )),
        labelStyle: TextStyle(
          color: Colors.red,
        )),
    appBarTheme: AppBarTheme(
      titleSpacing: 20.0,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.red[900],
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: Colors.red[900],
      elevation: 0.0,
      titleTextStyle: TextStyle(
        // color: Colors.white,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.red,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      elevation: 20.0,
      // backgroundColor: HexColor('333739'),
    ),
    textTheme: TextTheme(
        bodyText1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          // color: Colors.white,
        ),
        bodyText2: TextStyle(
          fontSize: 16,
          // color: Colors.white,
        )));
