import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:islamicroute/app_theme.dart';
import 'package:islamicroute/tabs/quran/sura_detials.dart';

class quranTab extends StatelessWidget {
List<String>suraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
"الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset('assests/quran_header_icn.png',
            height: MediaQuery.of(context).size.height*0.25,),
          SizedBox(height: 12.0,),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context,index)=>SizedBox(
                height: 12.0,
              ),
                itemCount: suraNames.length,
                itemBuilder: (context,index){

              return GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(suraDetials.routeName,

                  arguments: SuraDetailsArg(
                    suraName: suraNames[index],
                    index: index
                  ));


                },
                child: Text(suraNames[index],textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,),
              );
            }),
          )
        ],
      ),
    );
  }
}
class SuraDetailsArg{
  String suraName;
  int index;
  SuraDetailsArg({
    required this.suraName,
    required this.index
});
}
