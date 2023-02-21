import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'descrptn_smoothing.dart';

// ignore: must_be_immutable
class CardNtApprhnsble extends StatelessWidget 
{
  CardNtApprhnsble({Key? key}) : super(key: key);
  double cardWidth = 212.w;
  double cardHeight = 316.h;

  @override
  Widget build(BuildContext context) 
  {
    return Stack
    (
      fit: StackFit.loose,
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

            shape: SmoothRectangleBorder
            (
              borderRadius: SmoothBorderRadius
              (
                cornerRadius: 15.r,
                cornerSmoothing: 0.9
              )
            )
          ),

          // I M A G E  O F  i P A D
          child: Column
          (
            children:
            [
              const SizedBox(height: 20,),
              Image.asset('assets/iPad Pro.jpg', width: 150.w,height: 158.09.h,)
            ]
          ),
        ),


         // B O T T O M  D E S C R I P T I O N
          Positioned
          (
            bottom: 0,

            child: DescrptnCardNtApprnhsble()
          ),
      ],
    );
  }
}