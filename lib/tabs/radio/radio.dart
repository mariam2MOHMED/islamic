import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:islamicroute/app_theme.dart';

class radioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assests/radio_header.png'),
          SizedBox(height: 24.0,),
          Text("إذاعة القرآن الكريم",style:
          Theme.of(context).textTheme.titleLarge!.copyWith(
            fontFamily: "El Messiri",
            fontWeight: FontWeight.w700
          ),),
          SizedBox(height: 24.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             SizedBox(width: 24.0,) ,
              ImageIcon(AssetImage("assests/Icon metro-next.png",),color: AppTheme.lightPrimary,),
              ImageIcon(AssetImage("assests/Icon awesome-play.png"),color: AppTheme.lightPrimary,),
              ImageIcon(AssetImage("assests/Icon metro-next2.png"),color: AppTheme.lightPrimary,),
              SizedBox(width: 24.0,) ,
            ],
          )
        ],
      ),
    );
  }
}
