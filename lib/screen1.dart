import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_hub/auth.dart';
import 'package:power_hub/chartTest.dart';
import 'package:power_hub/colors.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  AuthService _auth = AuthService();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
      backgroundColor: kprimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Without Error",
            style: TextStyle(color: kTextColor),
          ),
          Center(
            child: LineChartSample2(),
          ),
        ],
      ),
    );
  }
}
