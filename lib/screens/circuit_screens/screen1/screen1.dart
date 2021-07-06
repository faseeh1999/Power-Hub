import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:power_hub/screens/circuit_screens/screen2/screen2.dart';
import 'package:power_hub/screens/circuit_screens/screen2/state2.dart';
import 'package:power_hub/services/auth.dart';
import 'package:power_hub/screens/circuit_screens/screen1/chartTest.dart';
import 'package:power_hub/shared/colors.dart';

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: menu(),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Power Hub",
            style: GoogleFonts.poppins(
                color: kTextColor,
                fontSize: size.width * 0.08,
                letterSpacing: 1.0),
          ),
          // actions: [
          //   FlatButton.icon(
          //       onPressed: () async {
          //         setState(() {
          //           isLoading = true;
          //         });
          //         await _auth.signOut();
          //       },
          //       icon: Icon(
          //         FontAwesomeIcons.signOutAlt,
          //         color: kLineColor,
          //       ),
          //       label: Text("Logout",
          //           style: GoogleFonts.poppins(
          //             color: kLineColor,
          //             letterSpacing: 1.0,
          //             fontSize: size.width * 0.04,
          //           )))
          // ],
        ),
        backgroundColor: kprimary,
        body: TabBarView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                "Circuit Diagrams",
                style: GoogleFonts.poppins(
                    color: kTextColor, fontSize: size.width * 0.08),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                "Inverter of HVDC",
                style: GoogleFonts.poppins(
                    color: kTextColor, fontSize: size.width * 0.05),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                "Without Commutation Failure",
                style: GoogleFonts.poppins(
                    color: kTextColor, fontSize: size.width * 0.05),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Container(
                child: Image.asset(
                  'assets/one1.PNG',
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: LineChartSample2(),
              )
            ],
          )
        ]),
        floatingActionButton: FloatingActionButton.extended(
          label: Text(
            "Apply Error",
            style: GoogleFonts.poppins(
                color: kTextColor, fontWeight: FontWeight.w500),
          ),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                PageTransition(
                    child: State2(),
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 1000)));
          },
          icon: Icon(Icons.electrical_services_outlined),
        ),
      ),
    );
  }
}

Widget menu() {
  return Material(
    color: kprimary,
    child: TabBar(
      labelColor: kTextColor,
      indicatorColor: kTextColor,
      tabs: [
        Tab(
          text: "Circuits",
          icon: Icon(Icons.electrical_services),
        ),
        Tab(
          text: "Graphs",
          icon: Icon(Icons.insights_outlined),
        ),
      ],
    ),
  );
}
