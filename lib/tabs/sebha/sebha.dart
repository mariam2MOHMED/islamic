import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:islamicroute/app_theme.dart';

class sebhaTab extends StatefulWidget {

  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  List<String>azkar=[
    "سبحان الله",
    "الحمد الله",
"لا اله الا الله",
    "الله اكبر"
  ];
  double angle=0;
  int index=0;
  int cnt=0;
  @override
  Widget build(BuildContext context) {
    return Column(
// crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
  SizedBox(height: 30.0,),
  Center(
    child: Stack(

      alignment: Alignment.topCenter,
      children: [
        Image.asset('assests/head of seb7a.png'),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: GestureDetector(
              onTap: (){

          onClickazkar();
              },
              child: Transform.rotate(
angle:angle,
                  child: Image.asset('assests/body of seb7a.png',height: 232,width: 234,))),
        ),
      ],
    ),
  ),
  Text("عدد التسبيحات",style: Theme.of(context).textTheme.titleLarge,
    textAlign: TextAlign.center,),
  SizedBox(height: 20.0,),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(

        decoration: BoxDecoration(
          color: AppTheme.lightgold,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("$cnt",textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: 25.0
          ),),
        )),
  ),
  SizedBox(height: 20.0,),
  TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppTheme.lightPrimary
      ),
      onPressed: (){
  onClickazkar();


      }, child: Text("${azkar[index]}",
    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
    color: AppTheme.white,
    fontSize: 25.0,
    fontFamily: "Inter"
  ),))
],
    );
  }
  onClickazkar(){
    cnt++;
    if(cnt==33){
      index++;
      cnt=0;

    }
    if(index==4){
      index=0;
      cnt=0;
    }
    angle+=45;
    setState(() {

    });
  }
}
