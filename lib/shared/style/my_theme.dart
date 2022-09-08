import 'package:flutter/material.dart';

class MyThemeData {//##5D9CEC
  static Color primaryColor = Color(0xFF39A552);
  static Color primaryColorDark = Color(0xFF060E1E);
  static Color bootmsheetColor = Color(0xFF141922);
  static Color onprimaryColor = Color(0xFFDFECDB);
  static Color greenColor = Color(0xFF61E757);
  static Color whiteColor = Color(0xFFFFFFFF);
  static Color blackColor = Color(0xFF141922);
  static Color redwColor = Color(0xFFEC4B4B);
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: onprimaryColor,
      primaryColor: primaryColor,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: primaryColor,
        elevation: 0,
      ),
      iconTheme: IconThemeData(
        color: blackColor
      ),
      textTheme: TextTheme(
        subtitle2: TextStyle(
          fontSize: 13,
          color:Colors.grey,
          fontWeight: FontWeight.w700,
        ),
        headline1: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        headline4: TextStyle(
          fontSize: 25,
          color: blackColor,
          fontWeight: FontWeight.w700,
        ),
        headline2: TextStyle(
          fontSize: 30,
          color: primaryColorDark,
          fontWeight: FontWeight.w700,
        ),
        bodyText1:TextStyle(
          fontSize: 20,
          color: whiteColor,
          fontWeight: FontWeight.w700,
        ),
        bodyText2:TextStyle(
          fontSize: 25,
          color:Colors.green,
          fontWeight: FontWeight.w700,
        ),
        subtitle1: TextStyle(
          fontSize: 10,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        headline3: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black, unselectedItemColor: Colors.white));

 static final ThemeData darkTheme = ThemeData(
     scaffoldBackgroundColor: primaryColorDark,
      primaryColor: primaryColorDark,

      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: primaryColor,
        elevation: 0,
      ),
      iconTheme: IconThemeData(
          color: whiteColor
      ),
      textTheme: TextTheme(

        headline1: TextStyle(
          fontSize: 30,
          color: whiteColor,
          fontWeight: FontWeight.w700,
        ),
        headline2: TextStyle(
          fontSize: 30,
          color: whiteColor,
          fontWeight: FontWeight.w700,
        ),
        bodyText1:TextStyle(
          fontSize: 20,
          color: whiteColor,
          fontWeight: FontWeight.w700,
        ),
        bodyText2:TextStyle(
          fontSize: 25,
          color:Colors.green,
          fontWeight: FontWeight.w700,
        ),
        subtitle1: TextStyle(
          fontSize: 25,
          color: whiteColor,
          fontWeight: FontWeight.w700,
        ),
        subtitle2: TextStyle(
          fontSize: 25,
          color: blackColor,
          fontWeight: FontWeight.w700,
        ),
        headline4: TextStyle(
          fontSize: 25,
          color: blackColor,
          fontWeight: FontWeight.w700,
        ),
        headline3: TextStyle(
          fontSize: 25,
          color: whiteColor,
          fontWeight: FontWeight.w400,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: bootmsheetColor,
          selectedItemColor: primaryColor, unselectedItemColor: Colors.white));
}
