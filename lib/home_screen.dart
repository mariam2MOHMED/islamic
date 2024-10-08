import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamicroute/tabs/hadeth/hadeth.dart';
import 'package:islamicroute/tabs/quran/quran_tab.dart';
import 'package:islamicroute/tabs/radio/radio.dart';
import 'package:islamicroute/tabs/sebha/sebha.dart';
import 'package:islamicroute/tabs/setting/seting.dart';
import 'package:islamicroute/tabs/setting/setting_class.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName="/home";
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currindex=0;
  List<Widget>tabs=[
    radioTab(),
    sebhaTab(),
    headthTab(),
    quranTab(),
    settingTab()
  ];
  @override
  Widget build(BuildContext context) {
SettingProvider settingProvider=Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
     image: DecorationImage(image: AssetImage(settingProvider.themeMode==ThemeMode.light?
     'assests/bg3.png':  'assests/bgdark.png',)
         ,fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islamic),
        ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
// backgroundColor: Color(B7935F),

          currentIndex: currindex,
          onTap: (index){
      currindex=index;
      setState(() {

      });

          },
          items: [
            BottomNavigationBarItem(icon:
            ImageIcon(AssetImage("assests/radio_icn.png"),),
                label: AppLocalizations.of(context)!.radio),

            BottomNavigationBarItem(icon:
            ImageIcon(AssetImage("assests/sebha_icn.png")),
                label: AppLocalizations.of(context)!.sebha),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/hadeth_icn.png")),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/quran_icn.png")),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(icon:Icon(Icons.settings),
                label: AppLocalizations.of(context)!.setting),
          ],
        ),
        body: tabs[currindex],
      ),
    );
  }
}
