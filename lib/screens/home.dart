import 'package:animated_button/animated_button.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'package:power_hub/services/auth.dart';
import 'package:power_hub/screens/circuit_screens/screen1/chartTest.dart';
import 'package:power_hub/shared/colors.dart';
import 'package:power_hub/shared/loader.dart';
import 'package:power_hub/screens/splash.dart';
import 'package:power_hub/screens/circuit_screens/screen1/state.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AuthService _auth = AuthService();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return isLoading
        ? Loading()
        : Scaffold(
            backgroundColor: kprimary,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              title: Text(
                "Power Hub",
                style: GoogleFonts.poppins(
                    color: kTextColor,
                    fontSize: size.width * 0.08,
                    letterSpacing: 1.0),
              ),
              actions: [
                FlatButton.icon(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      await _auth.signOut();
                    },
                    icon: Icon(
                      FontAwesomeIcons.signOutAlt,
                      color: kLineColor,
                    ),
                    label: Text("Logout",
                        style: GoogleFonts.poppins(
                          color: kLineColor,
                          letterSpacing: 1.0,
                          fontSize: size.width * 0.04,
                        )))
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Text(
                  "Start Power Hub",
                  style: GoogleFonts.poppins(
                      color: kTextColor, fontSize: size.width * 0.1),
                ),
                SizedBox(
                  height: size.height * 0.3,
                ),
                Center(
                  child: AnimatedButton(
                    shadowDegree: ShadowDegree.dark,
                    duration: 100,
                    enabled: true,
                    shape: BoxShape.circle,
                    height: size.height * 0.2,
                    width: size.width * 0.4,
                    color: kLineColor,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: CenterState(),
                              type: PageTransitionType.fade));
                    },
                    child: Icon(
                      Icons.power_settings_new_outlined,
                      color: kprimary,
                      size: size.width * 0.2,
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   shape: CircleBorder(),
                    //   padding: EdgeInsets.all(20),
                    //   primary: kLineColor, // <-- Button color
                    //   onPrimary: Colors.red, // <-- Splash color
                    // ),
                  ),
                ),
              ],
            ),
          );
  }
}
