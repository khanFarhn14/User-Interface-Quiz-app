import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_interface_quiz_app/functions.dart';
import '../sony_card.dart';

class SonyApprehensiblePage extends StatefulWidget {
  const SonyApprehensiblePage({Key? key}) : super(key: key);

  @override
  State<SonyApprehensiblePage> createState() => SonyApprehensiblePageState();
}

class SonyApprehensiblePageState extends State<SonyApprehensiblePage> {
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: appBarHeadng(),

      backgroundColor: Functions().dominant,

      body: Padding
      (
        padding: EdgeInsets.fromLTRB(30.w, 30.h, 30.w, 30.h),
        child: Column
        (
          children: 
          [
            Center(child: apprehensible()),

            SizedBox(height: 50.h),

            descriptionApprehensible(),

            SizedBox(height: 30.h),

            SonyCard(brdrRdiusImg: 10,),

          ],
        )
        
      )
    );
  }
}

//Description for Apprehensible
RichText descriptionApprehensible()
{
  return RichText
  (
    textAlign: TextAlign.center,
    text: TextSpan
    (
      text: 'Using Complimentary Border Radius',
      style: TextStyle
      (
        fontFamily: 'InterSemiBol',
        fontSize: 15.sp,
        color: Functions().secondary
      ),

      children: <TextSpan>
      [
        TextSpan
        (
          text: '\nDon\'t round inner elements the same amount as of the main card. Reduce slightly for better look',
          style: TextStyle
          (
            fontFamily: 'InterRegular',
            fontSize: 10.sp,
            color: Functions().secondary.withOpacity(0.5),
          ),
        )
      ]
    ),
  );
}