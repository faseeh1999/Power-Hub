import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:power_hub/screens/circuit_screens/screen3/screen3.dart';
import 'package:power_hub/shared/colors.dart';
import 'package:power_hub/shared/loader.dart';

class State2 extends StatefulWidget {
  @override
  _State2State createState() => _State2State();
}

class _State2State extends State<State2> {
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
              child: Screen3()));
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
    ;
  }
}
