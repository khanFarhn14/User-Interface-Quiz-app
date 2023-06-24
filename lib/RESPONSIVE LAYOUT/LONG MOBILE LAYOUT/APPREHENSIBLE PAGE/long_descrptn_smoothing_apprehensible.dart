import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_corner/smooth_corner.dart';
import '../../../../functions.dart';

double height = 140.h;

// ignore: must_be_immutable
class DescrptnCardApprnhsble extends StatefulWidget 
{
  const DescrptnCardApprnhsble({Key? key}) : super(key: key);

  @override
  State<DescrptnCardApprnhsble> createState() => _DescrptnCardApprnhsbleState();
}

class _DescrptnCardApprnhsbleState extends State<DescrptnCardApprnhsble> {
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