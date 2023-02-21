import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_interface_quiz_app/functions.dart';
import '../../SONY/sony_home_page.dart';
import '../readibility_improper.dart';

class ReadabilityImproperXpln extends StatefulWidget {
  const ReadabilityImproperXpln({Key? key}) : super(key: key);

  @override
  State<ReadabilityImproperXpln> createState() => _ReadabilityImproperXplnState();
}

class _ReadabilityImproperXplnState extends State<ReadabilityImproperXpln> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: appBarHeadng(),

      backgroundColor: Functions().dominant,

      body: Padding
      (
        padding: EdgeInsets.fromLTRB(30.w, 30.w, 30.w, 0),
        child: Column
        (
          children: 
          [
            ntApprehensible(),

            SizedBox(height: 48.h),

            // Readability is Improper
            Text
            (
              "Readability is Improper",
              style: TextStyle
              (
                fontFamily: 'InterSemiBold',
                fontSize: 18.sp,
                color: Functions().secondary
              )
            ),


            SizedBox(height: 20.h,),

            Center(child: ReadabilityImproper()),

            SizedBox(height: 183.h,),

            InkWell
            (
              onTap:()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SonyHomePage()));
              },
              child: NextButtn()
            ),
          ],
        )

      ),
    );
  }
}