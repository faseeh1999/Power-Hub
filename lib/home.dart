import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_hub/auth.dart';
import 'package:power_hub/chartTest.dart';
import 'package:power_hub/colors.dart';
import 'package:power_hub/loader.dart';

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
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(size.width * 0.05),
                    child: Text(
                      "Start Power Hub",
                      style: GoogleFonts.poppins(
                          color: kTextColor, fontSize: size.width * 0.1),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 200, height: 200),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.power_settings_new_outlined,
                        color: kprimary,
                        size: size.width * 0.2,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        primary: kLineColor, // <-- Button color
                        onPrimary: Colors.red, // <-- Splash color
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
