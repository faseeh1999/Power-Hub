import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:power_hub/screens/circuit_screens/screen1/screen1.dart';
import 'package:power_hub/screens/circuit_screens/screen2/screen2.dart';
import 'package:power_hub/shared/colors.dart';
import 'package:power_hub/shared/loader.dart';
import 'package:power_hub/shared/loader2.dart';

class CenterState extends StatefulWidget {
  @override
  _CenterStateState createState() => _CenterStateState();
}

class _CenterStateState extends State<CenterState> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 2800), () {
      Navigator.pushReplacement(
          context,
          PageTransition(
              type: PageTransitionType.fade,
              duration: Duration(milliseconds: 300),
              child: Screen1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Synchronizing with PSCAD",
              style: GoogleFonts.poppins(
                  fontSize: size.width * 0.05, color: kTextColor),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Loading(),
        ],
      ),
    );
  }
}
