// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';

class ReponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  // ignore: non_constant_identifier_names
  final Widget LongMobileLayout;
  // ignore: non_constant_identifier_names
  const ReponsiveLayout({required this.mobileLayout, required this.LongMobileLayout});
  
  @override
  Widget build(BuildContext context) {  
    return LayoutBuilder
    (
      builder: (context, constraints)
      {
        if(constraints.maxHeight <= 700)
        {
          return mobileLayout;
        }else
        {
          return LongMobileLayout;
        }
      }
    );
  }
}