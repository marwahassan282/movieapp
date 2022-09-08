import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFF1A1A1A);
  static Color OnprimaryColor = Color(0xFF79643D);
  static Color primaryColorDark = Color(0xFF12182A);
  static Color BlackColor = Color(0xFF121312);

  static Color WhiteColor = Color(0xFFFFFFFF);
  static Color YellowColor = Color(0xFFFFBB3B);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: BlackColor,
      primaryColor: primaryColor,
      appBarTheme: AppBarTheme(
        centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white)),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        headline3: TextStyle(
          fontSize: 10,
          color: WhiteColor,
          fontWeight: FontWeight.normal,),
        subtitle1: TextStyle(
          fontSize: 25,
          color: BlackColor,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          fontSize: 20,
          color: BlackColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
          selectedItemColor:YellowColor, unselectedItemColor: Colors.white
      ),
      );

  static final ThemeData darkTheme = ThemeData(
      primaryColor: primaryColorDark,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: WhiteColor)),
      textTheme: TextTheme(
        headline3: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.w400,),
        headline1: TextStyle(
          fontSize: 30,
          color: WhiteColor,
          fontWeight: FontWeight.w700,
        ),
        headline2: TextStyle(
          fontSize: 25,
          color: YellowColor,
          fontWeight: FontWeight.w400,
        ),
        subtitle1: TextStyle(
          fontSize: 25,
          color: YellowColor,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          fontSize: 20,
          color: YellowColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: YellowColor, unselectedItemColor: Colors.white));
}
