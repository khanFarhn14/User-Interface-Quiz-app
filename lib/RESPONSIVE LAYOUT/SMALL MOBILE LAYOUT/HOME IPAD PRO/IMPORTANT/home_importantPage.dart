// ignore_for_file: file_names
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_interface_quiz_app/functions.dart';
import 'READABILITY IMPROPER/improper_readability.dart';
import 'READABILITY/readability_page.dart';
import 'readability_proper.dart';
import 'readibility_improper.dart';

class HomeImportant extends StatefulWidget {
  const HomeImportant({Key? key}) : super(key: key);

  @override
  State<HomeImportant> createState() => _HomeImportantState();
}

class _HomeImportantState extends State<HomeImportant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      //UI Quiz App
      appBar: appBarHeadng(),

      backgroundColor: Functions().dominant,

      body: Padding
      (
        padding: EdgeInsets.fromLTRB(30.w, 30.w, 30.w, 0),
        child: Column
        (
          children: 
          [
            Center(child: question()),

            SizedBox(height: 30.h),

            //Not Apprehensible
            Center
            (
              child: InkWell
              (
                onTap:()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ReadabilityImproperXpln()));
                },
                child: ReadabilityImproper()
              )
            ),

            SizedBox(height: 30.h),

            //Apprehensible
            Center
            (
              child: InkWell
              (
                onTap:()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ReadabilityPage()));
                },
                child: ReadabilityProper()
              )
            ),
          ],
        ),
      ),

    );
  }
}

//Ok Button
Container okButton()
{
  return Container
  (
    width: 55.w,
    height: 32.h,
    decoration: ShapeDecoration
    (
      color: const Color(0xff6A5DF6),
      shape: SmoothRectangleBorder
      (
        borderRadius: SmoothBorderRadius
        (
          cornerRadius: 5.r,
          cornerSmoothing: 0.9
        )
      )
    ),

    child: Center
    (
      child: Text
      (
        "Ok",
        style: TextStyle
        (
          fontSize: 10.sp,
          fontFamily: 'InterBlack',
          color: Functions().dominant
        )
      ),
    )
  );
}