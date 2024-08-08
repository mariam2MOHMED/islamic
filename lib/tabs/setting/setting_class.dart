import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider with ChangeNotifier {
  ThemeMode themeMode=ThemeMode.dark;
  String language='en';
  Future<void> getTheme()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark= prefs.getBool('isDark');
    if(isDark!=null){
      if(isDark==true){
        themeMode=ThemeMode.dark;
      }else{
        themeMode=ThemeMode.light;
      }
    }

      notifyListeners();

  }
  Future<void> changeMode( ThemeMode selectedThemeMode)async{
    themeMode=selectedThemeMode;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark', themeMode==ThemeMode.dark );

    notifyListeners();
  }
  Future<void> changeLanguage(String lang)async{
    language=lang;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('lang', language);
    notifyListeners();
  }
  Future<void> getLanguage()async{

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? langu=prefs.getString('lang');
    if(langu!=null){
      if(langu=='en'){
        language='en';
      }else{
        language='ar';
      }
    }
    notifyListeners();
  }

}