import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:figma_squircle/figma_squircle.dart';
import '../../../../functions.dart';
import 'descrptn_smoothing_apprehensible.dart';

double gapBetwnRow = 5;
double spacingInDescrptn = 10;
// ignore: must_be_immutable
class CardApprhnsbleExplain extends StatelessWidget 
{
  CardApprhnsbleExplain({Key? key}) : super(key: key);
  double cardWidth = 212.w;
  double cardHeight = 360.h;


  @override
  Widget build(BuildContext context) 
  {
    return Stack
    (
      clipBehavior: Clip.none,
      // fit: StackFit.loose,
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
            color: const Color(0xff000000),

            shape: SmoothRectangleBorder
            (
              borderRadius: SmoothBorderRadius
              (
                cornerRadius: 15.r,
                cornerSmoothing: 0.9
              )
            ),

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
        const Positioned
        (
          bottom: 0,

          child: Stack
          (
            // alignment: Alignment.centerLeft,
            clipBehavior: Clip.none,
            children:
            [
              DescrptnCardApprnhsble(),

              Positioned
              (
                
                child: ExplanationPart()
              ),
            ],
          )
        ),
      ],
    );
  }
}


class ExplanationPart extends StatelessWidget {
  const ExplanationPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned
    (
      bottom: 15.h,
      child: Padding
      (
        padding: EdgeInsets.fromLTRB(10.w,0,0,0),
        child: Column
        (
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            Row
            (
              children: 
              [
                // P R O D U C T  H E A D I N G
                // i P a d  P r o
                Container
                (
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration
                  (
                    border: Border.all
                    (
                      color: Functions().right,
                      width: 1.4
                    ),
                    borderRadius: BorderRadius.circular(4.5),
                  ),

                  child: Text
                  (
                    "iPad Pro",
                    style: Functions().contntHedng()
                  )
                ),

                // H O R I Z O N T A L  L I N E
                Padding
                (
                  padding: EdgeInsets.symmetric(horizontal: gapBetwnRow),
                  child: Container
                  (
                    height:1.0,
                    width:145.0.w,
                    color:const Color(0xff000000),
                  ),
                ),

                SizedBox
                (
                  width: 98.h,
                  child: Text
                  (
                    "Name of the product \nAfter reading this, user \nwill have many questions.",
                    style: Functions().apprehensibleExplain(),
                  ),
                ),
              ],
            ),

            SizedBox(height: spacingInDescrptn),

            // D E S C R I P T I O N  O F  T H E  P R O D U C T
            Row
            (
              children: 
              [
                // Front-facing camera. iPad Pro features...
                Container
                (
                  width: 185.w,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration
                  (
                    border: Border.all
                    (
                      color: Functions().right,
                      width: 1.4
                    ),
                    borderRadius: BorderRadius.circular(4.5),
                  ),
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

                //Horizontal Line
                Padding
                (
                  padding: EdgeInsets.symmetric(horizontal:gapBetwnRow),
                  child: Container
                  (
                    height:1.0,
                    width:34.w,
                    color:Functions().secondary,
                  ),
                ),

                //Explaining the Description
                SizedBox
                (
                  width: 98.w,
                  child: Text
                  (
                    "User\nunderstanding the\nWhat &\nWhy of the Product",
                    style: Functions().apprehensibleExplain(),
                  ),
                ),
              ],
            ),

            SizedBox(height: spacingInDescrptn),

            Row
            (
              children: 
              [
                // P R I C E
                Container
                (
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration
                  (
                    border: Border.all
                    (
                      color: Functions().right,
                      width: 1.4
                    ),
                    borderRadius: BorderRadius.circular(4.5),
                  ),

                  //Text
                  child: Text
                  (
                    "\$799",
                    style: TextStyle
                    (
                      fontFamily: 'InterSemiBold',
                      fontSize: 12.sp,
                      color: Functions().secondary.withOpacity(0.7),
                    )
                  ),
                ),

                //Horizontal Line
                Padding
                (
                  padding: EdgeInsets.symmetric(horizontal:gapBetwnRow),
                  child: Container
                  (
                    height:1.0,
                    width:170.w,
                    color: Functions().secondary,
                  ),
                ),

                //Explaining the Description
                Stack
                (
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: 
                  [
                    SizedBox
                    (
                      width: 98.w,
                      height: 20,
                    ),
                    Positioned
                    (
                      bottom: -30,
                      child: SizedBox
                      (
                        width: 98.w,
                        child: Text
                        (
                          "In the end, the price\ncomes into play. User\ncan take an informed\ndecision when he\\she\nknows the what and why\nof the product.",
                          style: Functions().apprehensibleExplain(),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}