import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../functions.dart';
import '../../SMALL MOBILE LAYOUT/HOME IPAD PRO/IMPORTANT/home_importantPage.dart';
import 'long_card_not_apprehensible_explain.dart';

class LongNotApprehensiblePage extends StatefulWidget {
  const LongNotApprehensiblePage({Key? key}) : super(key: key);

  @override
  State<LongNotApprehensiblePage> createState() => _LongNotApprehensiblePageState();
}

class _LongNotApprehensiblePageState extends State<LongNotApprehensiblePage> 
{
  late double cardWidth = 212.w;
  late double cardHeight = 290.h;
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      // A P P  B A R
      appBar: appBarHeadng(),

      backgroundColor: Functions().dominant,

      body: LayoutBuilder(
        builder: (context, constraints) 
        {
          if(constraints.maxHeight >= 700 && constraints.maxHeight < 800)
          {
            cardWidth = 212.w;
            cardHeight = 290.h;
          }else if(constraints.maxHeight > 800 && constraints.maxHeight < 950)
          {
            cardWidth = 212.w;
            cardHeight = 250.h;
          }else
          {
            
          }
          return Padding
          (
            padding: EdgeInsets.fromLTRB(15.w, 40.h, 0, 20),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                // N O T  A P P R E H E N S I B L E
                Center
                (
                  child: ntApprehensible(),
                ),
      
                SizedBox(height: 40.h,),
      
                LongCardNtApprhnsbleExplain(cardWidth: cardWidth, cardHeight: cardHeight,),
      
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
      ),
    );
  }
}