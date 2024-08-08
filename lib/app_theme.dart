

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class AppTheme{
  static  Color lightPrimary=Color(0XFFB7935F);
  static  Color darkPrimary=Color(0XFF141A2E);
  static  Color white=Color(0XFFF8F8F8);
  static  Color black=Color(0XFF242424);
  static  Color gold=Color(0XFFFACC1D);
  //FACC1D
  //B7935F
  static  Color lightgold=Color(0XFFFB7935F);
  static ThemeData lightTheme=
  ThemeData(
    primaryColor: lightPrimary,
      switchTheme: SwitchThemeData(
          trackColor: MaterialStatePropertyAll(lightPrimary),
          thumbColor: MaterialStatePropertyAll(white)
      ),
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
  static ThemeData darkTheme=ThemeData(
    switchTheme: SwitchThemeData(
trackColor: MaterialStatePropertyAll(darkPrimary),
      thumbColor: MaterialStatePropertyAll(gold)
    ),
      primaryColor: AppTheme.darkPrimary,

      appBarTheme: AppBarTheme(

          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30.0,
              color: white,
              fontWeight: FontWeight.bold
          )

      ),
      textTheme: TextTheme(
          headlineSmall: TextStyle(
              color: gold,
              fontSize: 25.0,
              fontWeight: FontWeight.bold
          ),
          titleLarge: TextStyle(
              color: white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          )
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: darkPrimary,
          selectedItemColor: gold,
          unselectedItemColor: white,
          type: BottomNavigationBarType.fixed

      )
  );
}