import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../functions.dart';
import '../IMPORTANT/home_importantPage.dart';
import 'card_not_apprehensible_explain.dart';

class NotApprehensiblePage extends StatelessWidget {
  const NotApprehensiblePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      // A P P  B A R
      appBar: appBarHeadng(),

      backgroundColor: Functions().dominant,

      body: Padding
      (
        padding: EdgeInsets.fromLTRB(15.w, 40.h, 0, 20),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            // N O T  A P P R E H E N S I B L E
            Center
            (
              child: ntApprehensible()
            ),

            SizedBox(height: 40.h,),

            CardNtApprhnsbleExplain(),

            SizedBox(height: 40.h,),

            // N E X T  B U T T O N
            Center
            (
              child: InkWell
              (
                onTap:()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeImportant()));
                },
                child: const NextButtn()
              )
            ),
          ],
        )

      ),
    );
  }
}