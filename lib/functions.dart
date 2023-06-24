import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_corner/smooth_corner.dart';

class Functions
{
  // C o l o r  S e t u p
  final dominant = const Color(0xffCBCBCB);
  final secondary = const Color(0xff161616);
  final accent = const Color(0xff3E3E3E);
  final descrptnCard = const Color(0xffDEDFE1);
  final wrong = const Color(0xffA41215);
  final right = const Color(0xff00C013);
  final card = const Color(0xffDEDFE1);

  // U S E R  I N T E R F A C E  Q U I Z
  TextStyle appBarHeadng()
  {
    return TextStyle
    (
      fontFamily: 'InterExtraBold',
      fontSize: 18.sp,
      letterSpacing: 2.5,
      color: dominant,
    );
  }

  // W H I C H  U I  I S  A P P R E H E N S I B L E ?
  TextStyle question()
  {
    return TextStyle
    (
      fontFamily: 'InterSemiBold',
      fontSize: 15.sp,
      color: secondary
    );
  }

  // C O N T E N T  H E A D I N G
  TextStyle contntHedng()
  {
    return TextStyle
    (
      fontFamily: 'InterExtraBold',
      fontSize: 15.sp,
      color: secondary,
    );
  }

  // D E S C R I P T I O N
  TextStyle description()
  {
    return TextStyle
    (
      fontFamily: 'InterRegular',
      fontSize: 10.sp,
      color: secondary,
    );
  }

  // A P P R E H E N S I B L E
  TextStyle apprehensible()
  {
    return TextStyle
    (
      fontFamily: 'InterSemiBold',
      fontSize: 18.sp,
      color: right
    );
  }

  // A P P R E H E N S I B L E  E X P L A I N 
  TextStyle apprehensibleExplain()
  {
    return TextStyle
    (
      fontFamily: 'InterRegular',
      fontSize: 8.sp,
      color: secondary
    );
  }

  // N E X T  B U T T O N
  TextStyle next()
  {
    return TextStyle
    (
      fontFamily: 'InterBlack',
      fontSize: 15.sp,
      color: dominant
    );
  }

  TextStyle notApprehensible() 
  {
    return TextStyle
    (
      fontFamily: 'InterSemiBold',
      fontSize: 18.sp,
      color: wrong
    );
  }
}



class NextButtn extends StatelessWidget {
  const NextButtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothContainer
    (
      width: 75.w,
      height: 50.h,
      color: Functions().secondary,
      smoothness: 0.9,
      borderRadius: BorderRadius.circular(10.r), //here didn't verify
      child: Center
      (
        child: Text
        (
          "Next",
          style: Functions().next(),
        ),
      )
    );
  }
}

//  U S E R  I N T E R F A C E  Q U I Z
AppBar appBarHeadng ()
{
  return AppBar
  (
    elevation: 0,
    title:  Text
    (
      "User Interface Quiz",
      style: Functions().appBarHeadng(),
    ),
    centerTitle: true,
    backgroundColor: Functions().secondary,
  );
}

// W H I C H  U I  I S  A P P R E H E N S I B L E
Text question ()
{
  return Text
  (
    "Which UI is Apprehensible ?",
    style: Functions().question()
  );
}

// A P P R E H E N S I B L E
Text apprehensible()
{
  return Text
  (
    "Apprehensible",
    style: Functions().apprehensible(),
  );
}

//  N O T  A P P R E H E N S I B L E
Text ntApprehensible()
{
  return Text
  (
    "Not Apprehensible",
    style: Functions().notApprehensible(),
  );
}

//  Sony Name
Text sonyName()
{
  return Text
  (
    "Sony WHXMO3311",
    style: TextStyle
    (
      fontFamily: 'InterSemiBold',
      fontSize: 10.sp,
      color: Functions().secondary
    ),
  );
}