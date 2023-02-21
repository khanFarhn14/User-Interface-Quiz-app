import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../functions.dart';
import '../../SMALL MOBILE LAYOUT/HOME IPAD PRO/IMPORTANT/home_importantPage.dart';
import 'long_card_apprehensible_explain.dart';

class ApprehensiblePageLong extends StatefulWidget {
  const ApprehensiblePageLong({Key? key}) : super(key: key);

  @override
  State<ApprehensiblePageLong> createState() => _ApprehensiblePageLongState();
}

class _ApprehensiblePageLongState extends State<ApprehensiblePageLong> 
{
  late double cardWidth = 212.w;
  late double cardHeight = 330.h;
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      // A P P  B A R
      appBar: appBarHeadng(),

      backgroundColor: Functions().dominant,

      body: LayoutBuilder
      (
        builder: (context, constraints) 
        {
          if(constraints.maxHeight >= 700 && constraints.maxHeight <= 800)
          {
            cardWidth = 212.w;
            cardHeight = 330.h;
          }else if(constraints.maxHeight > 800 && constraints.maxHeight < 950)
          {
            cardWidth = 212.w;
            cardHeight = 290.h;
          }else
          {
            
          }
          return Padding
          (
            padding: EdgeInsets.fromLTRB(15.w, 40.h, 15.w, 20),
      
            child: Column
            (
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                // A P P R E H E N S I B L E
                Center
                (
                  child: apprehensible(),
                ),
      
                SizedBox(height: 40.h,),
      
                LongCardApprhnsbleExplain(cardWidth: cardWidth, cardHeight: cardHeight,),
      
                SizedBox(height: 40.h,),
      
                // N E X T  B U T T O N
                Center
                (
                  child: InkWell
                  (
                    onTap:()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeImportant()));
                    },
                    child: const NextButtn()
                  )
                ),
              ],
            )
          );
        }
      )

    );
  }
}