import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'APPREHENSIBLE PAGE/long_home_apprehensible_page.dart';
import 'NOT APPREHENSIBLE PAGE/long_home_not_apprehensible_page.dart';
import 'card_apprehensible.dart';
import 'card_not_apprehensible.dart';
import '../../functions.dart';

class HomeiPadProLong extends StatefulWidget {
  const HomeiPadProLong({Key? key}) : super(key: key);

  @override
  State<HomeiPadProLong> createState() => _HomeiPadProLongState();
}

class _HomeiPadProLongState extends State<HomeiPadProLong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      // A P P  B A R
      appBar: appBarHeadng(),

      backgroundColor: Functions().dominant,

      body: Container
      (
        alignment: Alignment.center,
        child: ListView
        (
          scrollDirection: Axis.vertical,
          children:
          [
            SizedBox(height: 30.h,),
            Center
            (
              child: question(),
            ),

            SizedBox(height: 30.h,),

            Center 
            (
              child: InkWell
              (
                onTap:()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ApprehensiblePageLong()));
                },
                child: CardApprhnsble()
              ),
            ),

            SizedBox(height: 30.h,),

            Center
            (
              child: InkWell
              (
                onTap:()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LongNotApprehensiblePage()));
                },
                child: CardNtApprhnsble()
              ),
            ),

            SizedBox(height: 30.h,),

          ],
        )
      )
    );
  }
}