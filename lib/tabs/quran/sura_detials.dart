import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicroute/app_theme.dart';
import 'package:islamicroute/tabs/quran/quran_tab.dart';
import 'package:islamicroute/tabs/setting/setting_class.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class suraDetials extends StatefulWidget {
  static  String routeName='/suraDetials';

  @override
  State<suraDetials> createState() => _suraDetialsState();
}

class _suraDetialsState extends State<suraDetials> {
  late SuraDetailsArg arg;

List<String> ayat=[

];

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider=Provider.of<SettingProvider>(context);
     arg=  ModalRoute.of(context)!.settings!.arguments as SuraDetailsArg;
     if(ayat.isEmpty)  loadSuraFile();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(settingProvider.themeMode==ThemeMode.light?
        'assests/bg3.png': 'assests/bgdark.png'),
            fit: BoxFit.fill)
      ),
      child: Scaffold(
     appBar: AppBar(
       title: Text(arg.suraName),
     ),
        body: Container(
          padding: EdgeInsets.all(24.0),
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.05,
            horizontal: MediaQuery.of(context).size.width*0.07,
          ),
          decoration: BoxDecoration(
            color: settingProvider.themeMode==ThemeMode.light?Colors.white:AppTheme.darkPrimary,
borderRadius: BorderRadius.circular(25.0),

          ),
          child:ayat.isEmpty?Center(child: CircularProgressIndicator(
            color: settingProvider.themeMode==ThemeMode.light?AppTheme.lightPrimary:AppTheme.gold,
          )): ListView.builder(itemBuilder: (context,index){
            return Text("${ayat[index]}",
                textAlign: TextAlign.center
                ,style: Theme.of(context).textTheme.headlineSmall,);
          },
          itemCount: ayat.length,
          ),
        ),
      ),
    );
  }

  Future<void> loadSuraFile( )async{
    await Future.delayed(Duration(seconds: 2));
    String sura= await rootBundle.loadString('assests/files/${arg.index+1}.txt');
    ayat=sura.split('\r\n');
    setState(() {});
  }
}
