import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:power_hub/shared/colors.dart';
import 'package:power_hub/authentication/wrapper.dart';

class Introduction extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset('assets/is1.png'),
          title: "Visualize Commutation Failure Eradication.",
          body:
              "Visualize the design of a converter circuit that eliminates Commutation Failure in LCC HVDC Systems.",
          decoration: PageDecoration(
            pageColor: kprimary,
            titleTextStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 25, color: kLineColor),
            bodyTextStyle:
                GoogleFonts.poppins(color: kTextColor, letterSpacing: 2.0),
          )),
      PageViewModel(
          image: Image.asset('assets/is2.png'),
          title: "Deploying Controllable Capacitor.",
          body:
              "We have implemented thyristor based controllable capacitor module to remove commutation failure.",
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
          title: "Visualize Beautiful Graphs of Circuit.",
          body:
              "Now, using Line Graph API we have implemented different graphs of different circuits within the app.",
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
