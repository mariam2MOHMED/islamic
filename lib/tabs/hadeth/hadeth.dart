import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamicroute/tabs/hadeth/hadet_class.dart';
import 'package:islamicroute/tabs/hadeth/hadeth_detials.dart';

class headthTab extends StatefulWidget {
  @override
  State<headthTab> createState() => _headthTabState();
}

class _headthTabState extends State<headthTab> {
  List<Hadeth>hadeths=[

  ];

  @override
  Widget build(BuildContext context) {
  if(hadeths.isEmpty) { loadHadethFile();}
    return Column(
      children: [
        SizedBox(height: 20.0,),
        Image.asset('assests/hadith_header.png'),
        SizedBox(height: 20.0,),
        Expanded(
          child: ListView.separated(itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Navigator.pushNamed(context,HadethDetials.routeName,
                arguments: hadeths[index],
                );
              },
              child: Text("${hadeths[index].title}",textAlign: TextAlign.center,style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          },
              separatorBuilder:(context,index){
                return SizedBox(height: 12.0,);
              },
              itemCount:hadeths.length),
        )
      ],
    );
  }
  Future<void>loadHadethFile()async{
    String hadethContent=await rootBundle.loadString('assests/files/ahadeth.txt');
    List<String>ahadethText= hadethContent.split("#");
    hadeths=ahadethText.map((hadethText) {
      List<String> hadethLine=hadethText.trim().split('\n');
      String hadethTitle=hadethLine.first;
      hadethLine.removeAt(0);
      List<String> hadethContent=hadethLine;
      return Hadeth(title: hadethTitle, content: hadethContent);
    }).toList();
setState(() {});
  }
}
