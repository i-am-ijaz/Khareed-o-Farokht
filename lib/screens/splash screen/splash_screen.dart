import 'dart:async';

import 'package:flutter/material.dart';
import 'package:khareedo_farokht/screens/onboarding/on_boarding_screen.dart';
import 'package:khareedo_farokht/utils/colors.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
                child: OnBoardingScreen(),
                type: PageTransitionType.leftToRight)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Text(
          'Khareedo Farokht',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
