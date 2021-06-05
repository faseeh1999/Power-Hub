import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:power_hub/colors.dart';
import 'package:power_hub/wrapper.dart';

class Introduction extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset('assets/is1.png'),
          title: "Find all about your Health.",
          body:
              "Enable Yourself to find all the necessary information about specific diseases and symptoms.",
          decoration: PageDecoration(
            pageColor: kprimary,
            titleTextStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 25, color: kLineColor),
            bodyTextStyle:
                GoogleFonts.poppins(color: kTextColor, letterSpacing: 2.0),
          )),
      PageViewModel(
          image: Image.asset('assets/is2.png'),
          title: "Acquire all the information needed.",
          body:
              "Find all the relevent information about each disease listed, along with details, symptoms and much more.",
          decoration: PageDecoration(
            pageColor: kprimary,
            titleTextStyle: GoogleFonts.poppins(
              color: kLineColor,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
            bodyTextStyle:
                GoogleFonts.poppins(color: kTextColor, letterSpacing: 2.0),
          )),
      PageViewModel(
          image: Image.asset('assets/is3.png'),
          title: "Diagnose Your Diseases",
          body:
              "Now, using Healthify app you can diagnose your current disease with symptoms, it will provide a list of possible diseases.",
          decoration: PageDecoration(
            pageColor: kprimary,
            titleTextStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 25, color: kLineColor),
            bodyTextStyle:
                GoogleFonts.poppins(color: kTextColor, letterSpacing: 2.0),
          ))
    ];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: IntroductionScreen(
          done: Text(
            "Get Started",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                letterSpacing: 1.5,
                fontSize: size.width * 0.039,
                color: kTextColor),
          ),
          onDone: () {
            Navigator.pushReplacement(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    duration: Duration(milliseconds: 400),
                    child: Wrapper()));
          },
          pages: getPages(),
          showSkipButton: true,
          skip: Text(
            "Skip",
            style: GoogleFonts.poppins(
                letterSpacing: 1.5,
                fontSize: size.width * 0.039,
                color: kTextColor),
          ),
          showNextButton: true,
          next: Text(
            "Next",
            style: GoogleFonts.poppins(
                letterSpacing: 1.5,
                fontSize: size.width * 0.039,
                color: kTextColor),
          ),
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: kLineColor,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
          )),
    );
  }
}
