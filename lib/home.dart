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
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: LineChartSample2(),
                )
              ],
            ),
          );
  }
}
