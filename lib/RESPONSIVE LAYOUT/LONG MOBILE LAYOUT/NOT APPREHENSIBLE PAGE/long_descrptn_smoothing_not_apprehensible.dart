import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_corner/smooth_corner.dart';
import '../../../../functions.dart';
import 'long_card_not_apprehensible_explain.dart';
double height = 105.h;


// ignore: must_be_immutable
class LongDescrptnCardNtApprnhsble extends StatefulWidget 
{

  LongDescrptnCardNtApprnhsble({Key? key}) : super(key: key);

  @override
  State<LongDescrptnCardNtApprnhsble> createState() => _LongDescrptnCardNtApprnhsbleState();
}

class _LongDescrptnCardNtApprnhsbleState extends State<LongDescrptnCardNtApprnhsble> {
  int spacing = 10;

  @override
  Widget build(BuildContext context) {
    return SmoothContainer
    (
      // D E C O R A T I O N  O F  D E S C R I P T I O N  C A R D
      width: 212.w,
      height: height,

      smoothness: 0.9,

      borderRadius: BorderRadius.only
      (
        bottomLeft: Radius.circular(15.r),
        bottomRight: Radius.circular(15.r),
      ),
      color: Functions().descrptnCard,
    );
  }
}


// N O T  A P P R E H E N S I B L E  D E S C R I P T I O N
// ignore: must_be_immutable
class NotApprnhnsbleDescrptn extends StatelessWidget
{
  int spacing = 10;
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
        
        Container
        (
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration
          (
            border: Border.all
            (
              color: Functions().wrong,
              width: 1.4
            ),
            borderRadius: BorderRadius.circular(4.5),
          ),
          child: Row
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
      ],
    );
  }
}