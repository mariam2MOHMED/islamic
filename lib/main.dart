import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamicroute/app_theme.dart';
import 'package:islamicroute/home_screen.dart';
import 'package:islamicroute/tabs/hadeth/hadeth_detials.dart';
import 'package:islamicroute/tabs/quran/sura_detials.dart';
import 'package:islamicroute/tabs/setting/setting_class.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(
      ChangeNotifierProvider(
          create: (BuildContext context) =>SettingProvider()..getTheme()..getLanguage(),
      child: islamicApp()));
}

class islamicApp extends StatelessWidget {
   islamicApp({super.key});
   @override
  Widget build(BuildContext context) {
  SettingProvider settingProvider=Provider.of<SettingProvider>(context)..getTheme()..getLanguage();

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme:AppTheme.lightTheme ,
      darkTheme: AppTheme.darkTheme,
      themeMode: settingProvider.themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingProvider.language),
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        suraDetials.routeName:(_)=>suraDetials(),
        HadethDetials.routeName:(_)=>HadethDetials(),

      },
      initialRoute:HomeScreen.routeName ,
    );
  }
}



