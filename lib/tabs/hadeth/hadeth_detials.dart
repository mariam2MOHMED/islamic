import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicroute/app_theme.dart';
import 'package:islamicroute/tabs/hadeth/hadet_class.dart';
import 'package:islamicroute/tabs/setting/setting_class.dart';
import 'package:provider/provider.dart';

class HadethDetials extends StatefulWidget {
  static const String routeName='/HadethDetials';

  @override
  State<HadethDetials> createState() => _HadethDetialsState();
}

class _HadethDetialsState extends State<HadethDetials> {


  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider=Provider.of<SettingProvider>(context);
Hadeth hadeth=ModalRoute.of(context)!.settings!.arguments as Hadeth;
    return Container(
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(settingProvider.themeMode==ThemeMode.light?
        'assests/bg3.png':'assests/bgdark.png'),
            fit: BoxFit.fill)
    ),
    child: Scaffold(
      appBar: AppBar(
        title: Text("${hadeth.title}"),
      ),
      body: Container(
        padding: EdgeInsets.all(24.0),
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height*0.05,
          horizontal: MediaQuery.of(context).size.width*0.07,
        ),
        decoration: BoxDecoration(
          color: settingProvider.themeMode==ThemeMode.dark?AppTheme.darkPrimary:AppTheme.white,
          borderRadius: BorderRadius.circular(25.0),

        ),
        child:hadeth.content.isEmpty?Center(child: CircularProgressIndicator(
          color: settingProvider.themeMode==ThemeMode.light?AppTheme.lightPrimary:AppTheme.gold,
        )): ListView.builder(itemBuilder: (context,index){
          return Text("${hadeth.content[index]}",
            textAlign: TextAlign.center
            ,style: Theme.of(context).textTheme.headlineSmall,);
        },
          itemCount: hadeth.content.length,
        ),
      ),
    ),
    );
  }

}
