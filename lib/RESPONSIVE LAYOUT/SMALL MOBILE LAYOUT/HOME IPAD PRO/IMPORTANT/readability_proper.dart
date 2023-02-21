import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../functions.dart';
import 'home_importantPage.dart';

// ignore: non_constant_identifier_names
Container ReadabilityProper()
{
  return Container
  (
    width: 295.w,
    height: 164.h,
    decoration: ShapeDecoration
    (
      color: Functions().card,
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
      padding: EdgeInsets.fromLTRB(10.w, 20.h, 10.w, 20.h),
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: 
        [
          Text
          (
            "IMPORTANT!",
            style: TextStyle
            (
              fontFamily: 'InterExtraBold',
              fontSize: 10.sp,
              color: Functions().secondary,
            )
          ),

          Text
          (
            "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\"",
            textAlign: TextAlign.center,
            style: TextStyle
            (
              fontFamily: 'InterBold',
              fontSize: 8.sp,
              color: const Color(0xff000000).withOpacity(0.5),
            ),
          ),

          okButton()
        ],
      ),
    )
  );
}