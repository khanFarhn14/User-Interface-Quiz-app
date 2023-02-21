import 'package:flutter/material.dart';
import 'package:user_interface_quiz_app/RESPONSIVE%20LAYOUT/SMALL%20MOBILE%20LAYOUT/HOME%20iPad%20Pro/home_iPadPage.dart';
import 'RESPONSIVE LAYOUT/LONG MOBILE LAYOUT/home_ipadpage.dart';
import 'RESPONSIVE LAYOUT/responsive_layout.dart';

class Home extends StatefulWidget
{
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold
    (
      body: ReponsiveLayout(mobileLayout: HomeiPadProSmall(), LongMobileLayout: HomeiPadProLong(),)
    );
  }
}