import 'package:flutter/material.dart';

class MyThemeData{

  static Color primaryColor = Color.fromRGBO(36, 36, 36, 1.0);
  static Color secondaryColor = Color.fromRGBO(183, 147, 95, 1.0);

  static ThemeData LightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      color: Colors.transparent,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
      subtitle1:  TextStyle(fontWeight: FontWeight.w600,fontSize: 25),
    ),
  );

  static ThemeData DarkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(fontWeight: FontWeight.w600,fontSize: 23),
    ),
  );

}