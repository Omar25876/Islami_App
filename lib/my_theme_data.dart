import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = const Color.fromRGBO(36, 36, 36, 1.0);
  static Color primaryColorDark = const Color.fromRGBO(20, 26, 46, 1.0);
  static Color secondaryColor = const Color.fromRGBO(183, 147, 95, 1.0);
  static Color secondaryColorDark = const Color.fromRGBO(250, 204, 29, 1.0);

  static ThemeData LightTheme = ThemeData(
    primaryColor: primaryColor,
    accentColor: secondaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      color: Colors.transparent,
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
      subtitle1: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 25, color: Colors.black),
      subtitle2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      elevation: 0,
      backgroundColor: secondaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryColor,
    ),
  );

  static ThemeData DarkTheme = ThemeData(
    primaryColor: secondaryColorDark,
    accentColor: primaryColorDark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      color: Colors.transparent,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      headline1: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
      subtitle1: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 25, color: secondaryColorDark),
      subtitle2: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      elevation: 0,
      backgroundColor: primaryColorDark,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: secondaryColorDark,
    ),
  );
}
