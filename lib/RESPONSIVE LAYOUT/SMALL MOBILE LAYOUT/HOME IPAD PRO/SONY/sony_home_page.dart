import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_interface_quiz_app/functions.dart';
import 'APPREHENSIBLE PAGE/home_apprehensible_page.dart';
import 'NOT APPREHENSIBLE PAGE/home_not_apprehensible_page.dart';
import 'sony_card.dart';

class SonyHomePage extends StatefulWidget {
  const SonyHomePage({Key? key}) : super(key: key);

  @override
  State<SonyHomePage> createState() => _SonyHomePageState();
}

class _SonyHomePageState extends State<SonyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: appBarHeadng(),

      backgroundColor: Functions().dominant,

      body: Padding
      (
        padding: EdgeInsets.fromLTRB(30.w, 30.h, 30.w, 30.h),
        child: Column
        (
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: 
          [
            //Which UI is Apprehensible
            Center(child: question()),

            SizedBox(height: 30.h,),
            
            
            //Complimentary Border Radius
            InkWell
            (
              onTap:()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SonyApprehensiblePage()));
              },
              child: SonyCard(brdrRdiusImg: 10.0,)
            ),

            SizedBox(height: 30.h,),

            // //Not use Complimentary Border Radius
            InkWell
            (
              onTap:()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SonyNotApprehensiblePage()));
              },
              child: SonyCard(brdrRdiusImg: 20.0,)
            )
          ],
        )
      )
    );
  }
}