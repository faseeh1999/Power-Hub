import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

import 'package:power_hub/colors.dart';
import 'package:power_hub/screen1.dart';

class CenterState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedSplashScreen(
      duration: 3000,
      backgroundColor: kprimary,
      splash: 'assets/splash.png',
      splashIconSize: size.width,
      nextScreen: Screen1(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.scale,
    );
  }
}
