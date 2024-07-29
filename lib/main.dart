import 'package:flutter/material.dart';
import 'package:islamicroute/app_theme.dart';
import 'package:islamicroute/home_screen.dart';
import 'package:islamicroute/tabs/hadeth/hadeth_detials.dart';
import 'package:islamicroute/tabs/quran/sura_detials.dart';

void main() {
  runApp(islamicApp());
}

class islamicApp extends StatelessWidget {
   islamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:AppTheme.lightTheme ,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        suraDetials.routeName:(_)=>suraDetials(),
        HadethDetials.routeName:(_)=>HadethDetials(),
      },
      initialRoute:HomeScreen.routeName ,
    );
  }
}



