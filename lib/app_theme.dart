import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme{
  static  Color lightPrimary=Color(0XFFB7935F);
  static  Color darkPrimary=Color(0XFFB7935F);
  static  Color white=Color(0XFFF8F8F8);
  static  Color black=Color(0XFF242424);
  static  Color gold=Color(0XFFFACC1D);
  //B7935F
  static  Color lightgold=Color(0XFFFB7935F);
  static ThemeData lightTheme=ThemeData(
    primaryColor: lightPrimary,
    appBarTheme: AppBarTheme(

      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 30.0,
        color: black,
        fontWeight: FontWeight.bold
      )

    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        color: black,
        fontSize: 25.0,
        fontWeight: FontWeight.bold
      ),
        titleLarge: TextStyle(
            color: black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
        )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightPrimary,
      selectedItemColor: black,
      unselectedItemColor: white,
      type: BottomNavigationBarType.fixed

    )
  );
  static ThemeData darkTheme=ThemeData();
}