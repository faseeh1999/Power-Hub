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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: menu(),
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
                child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset(
                      'assets/one1.PNG',
                    )),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Expanded(child: LineChartSample2()),
              )
            ],
          )
        ]),
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
