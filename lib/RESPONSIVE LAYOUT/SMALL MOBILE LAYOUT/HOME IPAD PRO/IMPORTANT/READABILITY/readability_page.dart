import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_interface_quiz_app/functions.dart';
import '../../SONY/sony_home_page.dart';
import '../readability_proper.dart';

class ReadabilityPage extends StatelessWidget {
  const ReadabilityPage({Key? key}) : super(key: key);

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
            //Apprehensible
            Center(child: apprehensible()),

            SizedBox(height: 48.h,),

            // Readability is Proper
            Text
            (
              "Readability is Proper",
              style: TextStyle
              (
                fontFamily: 'InterSemiBold',
                fontSize: 18.sp,
                color: Functions().secondary
              )
            ),

            SizedBox(height: 20.h,),

            Center(child: ReadabilityProper()),

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
        ),
      )
    );
  }
}