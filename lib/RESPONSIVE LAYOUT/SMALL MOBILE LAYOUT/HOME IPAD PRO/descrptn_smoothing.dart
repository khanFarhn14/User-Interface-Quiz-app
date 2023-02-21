import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_corner/smooth_corner.dart';
import '../../../functions.dart';
import 'card_apprehensible.dart';

double height = 120.h;

// ignore: must_be_immutable
class DescrptnCardApprnhsble extends StatelessWidget 
{
  int spacing = 10;
  DescrptnCardApprnhsble({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SmoothContainer
    (
      // D E C O R A T I O N  O F  D E S C R I P T I O N  C A R D
      width: CardApprhnsble().cardWidth,
      height: height,
      
      smoothness: 0.9,
      
      borderRadius: BorderRadius.only
      (
        bottomLeft: Radius.circular(15.r),
        bottomRight: Radius.circular(15.r),
      ),
      color: Functions().descrptnCard,

      // C O N T E N T
      child: Padding
      (
        padding: EdgeInsets.symmetric(vertical: spacing.w,horizontal: 17.w),

        child: ApprnhnsbleDescrptn(),
      ),
    );
  }
}


// ignore: must_be_immutable
class DescrptnCardNtApprnhsble extends StatelessWidget 
{
  int spacing = 10;
  DescrptnCardNtApprnhsble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothContainer
    (
      // D E C O R A T I O N  O F  D E S C R I P T I O N  C A R D
      width: CardApprhnsble().cardWidth,
      height: height,

      smoothness: 0.9,

      borderRadius: BorderRadius.only
      (
        bottomLeft: Radius.circular(15.r),
        bottomRight: Radius.circular(15.r),
      ),
      color: Functions().descrptnCard,

      // C O N T E N T
      child: Padding
      (
        padding: EdgeInsets.symmetric(vertical: spacing.w,horizontal: 17.w),

        child: NotApprnhnsbleDescrptn(),
      ),
    );
  }
}


// A P R E H E N S I B L E  D E S C R I P T I O N
// ignore: must_be_immutable
class ApprnhnsbleDescrptn extends StatelessWidget
{
  int spacing = 5;
  ApprnhnsbleDescrptn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: 
      [
        // P R O D U C T  H E A D I N G
        Text("iPad Pro",style: Functions().contntHedng()),

        SizedBox(height: spacing.w,),//Can't Constant this value because it is dynamic

        // D E S C R I P T I O N  O F  T H E  P R O D U C T
        RichText
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

        SizedBox(height: spacing.w,),//Can't Constant this value because it is dynamic

        // P R I C E
        Text
        (
          "\$799",
          style: TextStyle
          (
            fontFamily: 'InterSemiBold',
            fontSize: 12.sp,
            color: Functions().secondary.withOpacity(0.7),
          )
        ),
      ],
    );
  }
}


// N O T  A P P R E H E N S I B L E  D E S C R I P T I O N
// ignore: must_be_immutable
class NotApprnhnsbleDescrptn extends StatelessWidget
{
  int spacing = 5;
  NotApprnhnsbleDescrptn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: 
      [
        
        Row
        (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            // P R O D U C T  H E A D I N G
            Text("iPad Pro",style: Functions().contntHedng()),

            // P R I C E
            Text
            (
              "\$799",
              style: Functions().contntHedng()
            ),
          ]
        ),

        SizedBox(height: spacing.w,),//Can't Constant this value because it is dynamic

        // D E S C R I P T I O N  O F  T H E  P R O D U C T
        RichText
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

        // SizedBox(height: spacing.w,),//Can't Constant this value because it is dynamic

      ],
    );
  }
}