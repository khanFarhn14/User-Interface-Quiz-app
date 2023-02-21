import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../functions.dart';
import 'descrptn_smoothing_not_apprehensible.dart';

// ignore: must_be_immutable
class CardNtApprhnsbleExplain extends StatelessWidget 
{
  CardNtApprhnsbleExplain({Key? key}) : super(key: key);
  double cardWidth = 212.w;
  double cardHeight = 316.h;

  @override
  Widget build(BuildContext context) 
  {
    return Stack
    (
      clipBehavior: Clip.none,
      children: 
      [
        Container
        (
          // P e r s o n a l i z a t i o n  o f  t h e  C o n t a i n e r
          alignment: Alignment.center,
          width: cardWidth,
          height: cardHeight,
          decoration: ShapeDecoration
          (

            shape: SmoothRectangleBorder
            (
              borderRadius: SmoothBorderRadius
              (
                cornerRadius: 15.r,
                cornerSmoothing: 0.9
              )
            ),


            color: const Color(0xff000000),
            shadows:
            [
              BoxShadow
              (
                color: const Color(0xff000000).withOpacity(0.01),
                offset: Offset(58.w, 105.h),
                blurRadius: 48,
              ),

              BoxShadow
              (
                color: const Color(0xff000000).withOpacity(0.05),
                offset: Offset(33.w, 59.h),
                blurRadius: 41,
              ),

              BoxShadow
              (
                color: const Color(0xff000000).withOpacity(0.09),
                offset: Offset(14.w, 26.h),
                blurRadius: 30,
              ),

              BoxShadow
              (
                color: const Color(0xff000000).withOpacity(0.10),
                offset: const Offset(4, 7),
                blurRadius: 17,
              ),

              BoxShadow
              (
                color: const Color(0xff000000).withOpacity(0.10),
                offset: const Offset(0, 0),
                blurRadius: 0,
              ),
            ],

            
          ),

          // I M A G E  O F  i P A D
          child: Column
          (
            children:
            [
              const SizedBox(height: 20,),
              Image.asset('assets/iPad Pro.jpg', width: 150.w)
            ]
          ),
        ),


        // B O T T O M  D E S C R I P T I O N
        Positioned
        (
          bottom: 0,

          child: DescrptnCardNtApprnhsble()
        ),

        // C O N T E N T
        Positioned
        (
          bottom: 25,
          child: Padding
          ( 
            padding: EdgeInsets.fromLTRB(10.w,0,10.w,0),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: 
              [
                //First Widget of the Column
                Row
                (
                  children: 
                  [

                    //First widget of the Row
                    // P R O D U C T  H E A D I N G  A N D  P R I C E
                    Container
                    (
                      width: 192.w,
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration
                      (
                        border: Border.all
                        (
                          color: Functions().wrong,
                          width: 1.4
                        ),
                        borderRadius: BorderRadius.circular(4.5),
                      ),

                      child: Row
                      (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: 
                        [
                          //First Widget of the Row
                          // i P A D  P R O
                          Text("iPad Pro",style: Functions().contntHedng()),

                          //Second Widget of the Row
                          // P R I C E
                          Text
                          (
                            "\$799",
                            style: Functions().contntHedng()
                          ),
                        ],
                      ),
                    ),

                    // H O R I Z O N T A L  L I N E
                    Padding
                    (
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Container
                      (
                        height:1.0,
                        width:25.0,
                        color:const Color(0xff000000),
                      ),
                    ),

                    // E X P L A I N I N G  T H E  N O T  A P P R E H E N S I B L E
                    SizedBox
                    (
                      width: 98.w,
                      child: Text
                      (
                        "The name of the product\nfollowed by the price\nDisplaying the price\nbefore explaining the why\nand what of the product",
                        style: Functions().ApprehensibleExplain(),
                      ),
                    ),
                  ],
                ),

                //Second Widget of the Column
                // D E S C R I P T I O N  O F  T H E  P R O D U C T
                SizedBox
                (
                  width: 192.w,
                  child: RichText
                  (
                    text: TextSpan
                    (
                      text: 'Front-facing camera. iPad Pro features an Ultra Wide camera with a 12MP sensor and...',
                      style: Functions().description(),
                      children: <TextSpan>
                      [
                        TextSpan
                        (
                          text: 'Read More',
                          style: TextStyle
                          (
                            fontFamily: 'InterRegular',
                            fontSize: 10.sp,
                            color: Functions().secondary,
                          ),

                        ),

                      ]

                    )

                  ),

                ),

              ],

            ),

          ),

        ),

      ],

    );
    
  }
}