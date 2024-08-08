import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:islamicroute/tabs/setting/setting_class.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class settingTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider=Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.darkMode,style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w500
              ),),
              Switch(value: settingProvider.themeMode==ThemeMode.dark,
activeTrackColor: Theme.of(context).primaryColor,
                  inactiveTrackColor: Colors.grey,
                  onChanged: (isDark){
settingProvider.changeMode(isDark==true?ThemeMode.dark:ThemeMode.light);
                  })
            ],
          ),
          SizedBox(height: 40.0,),
          Row(
            children: [
              Text(AppLocalizations.of(context)!.language,style:
              Theme.of(context).textTheme.titleLarge,),
              Spacer(),

               DropdownButton<String>(
                  value:settingProvider.language,
                  items: [
                    DropdownMenuItem(
                      value: 'ar',
                      child:  Text("العربية",style:
                      Theme.of(context).textTheme.headlineSmall,),),
                    DropdownMenuItem(
                      value: 'en',
                      child:  Text("English",style: Theme.of(context)
                          .textTheme.headlineSmall,),)
                  ],onChanged: (selectedvalue){
                    if(selectedvalue==null){
                      return;
                    }
                    settingProvider.changeLanguage(selectedvalue);
                  //  settingProvider.getLanguage();
                    },
                ),

            ],
          )
        ],
      ),
    );
  }
}
