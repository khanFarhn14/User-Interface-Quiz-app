import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../functions.dart';

// ignore: must_be_immutable
class SonyCard extends StatelessWidget 
{
  double brdrRdiusImg;

  SonyCard({Key? key, required this.brdrRdiusImg}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    // double brdrRdiusImg = brdrRdiusImg;
    return Container
    (
      width: 236.w,
      height: 145.h,
      decoration: ShapeDecoration
      (
        color: Functions().card,
        shadows:
        [
          BoxShadow
          (
            color: const Color(0xff949494).withOpacity(0.0),
            offset: Offset(108.w, 73.h),
            blurRadius: 36,
          ),

          BoxShadow
          (
            color: const Color(0xff949494).withOpacity(0.03),
            offset: Offset(69.w, 46.h),
            blurRadius: 33,
          ),

          BoxShadow
          (
            color: const Color(0xff949494).withOpacity(0.10),
            offset: Offset(39.w, 26.h),
            blurRadius: 28,
          ),

          BoxShadow
          (
            color: const Color(0xff949494).withOpacity(0.17),
            offset: Offset(17.w, 12.h),
            blurRadius: 21,
          ),

          BoxShadow
          (
            color: const Color(0xff949494).withOpacity(0.20),
            offset: Offset(4.w, 3.h),
            blurRadius: 11,
          ),

          BoxShadow
          (
            color: const Color(0xff949494).withOpacity(0.20),
            offset: const Offset(0, 0),
            blurRadius: 0,
          ),
        ],

        shape: SmoothRectangleBorder
        (
          borderRadius: SmoothBorderRadius
          (
            cornerRadius: 20.r,
            cornerSmoothing: 0.9
          )
        )
      ),

      child: Padding
      (
        padding: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: 
          [
            //Image
            ClipRRect
            (
              borderRadius: BorderRadius.circular(brdrRdiusImg.r),
              child: Image.asset('assets/sony_headphones.png', width: 206.w,)
            ),

            //Sony Name
            sonyName()
          ],
        )
      )
    );
  }
}