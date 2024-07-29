import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamicroute/tabs/hadeth/hadeth.dart';
import 'package:islamicroute/tabs/quran/quran_tab.dart';
import 'package:islamicroute/tabs/radio/radio.dart';
import 'package:islamicroute/tabs/sebha/sebha.dart';
import 'package:islamicroute/tabs/setting/setting.dart';

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

    return Container(
      decoration: BoxDecoration(
     image: DecorationImage(image: AssetImage('assests/bg3.png',)
         ,fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامى"),
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
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/radio_icn.png"),),
                label: 'Radio'),

            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/sebha_icn.png")),
                label: 'Sebha'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/hadeth_icn.png")),
                label: 'Hadeth'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/quran_icn.png")),
                label: 'Quran'),
            BottomNavigationBarItem(icon:Icon(Icons.settings),
                label: 'Setting'),
          ],
        ),
        body: tabs[currindex],
      ),
    );
  }
}
