import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_hub/shared/colors.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: TabBarView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    "Saad Ahmad Khan",
                    style: GoogleFonts.poppins(
                        color: Colors.amber, fontSize: size.width * 0.08),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    "Electrical Engineer & App Developer",
                    style: GoogleFonts.poppins(
                        color: kTextColor, fontSize: size.width * 0.04),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/saad.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.all(size.width * 0.04),
                    child: Text(
                      "Personal Intro",
                      style: GoogleFonts.poppins(
                          fontSize: size.width * 0.08,
                          color: Colors.amber[800]),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.all(size.width * 0.04),
                    child: Text(
                      "A Competent electrical engineer who have multiple skills in the major of Power in EE field. I am also interested in the field of Information Technology and an intermediate in Mobile App Development.",
                      style: GoogleFonts.poppins(fontSize: size.width * 0.05),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.all(size.width * 0.04),
                    child: Text(
                      "App Summary",
                      style: GoogleFonts.poppins(
                          fontSize: size.width * 0.08,
                          color: Colors.amber[800]),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.all(size.width * 0.04),
                    child: Text(
                      "This app will provide the visualization of the circuit diagrams as well as the simulation waveforms of all the Converter Circuits of both Before and After Commutation Failures and after its improvement too.",
                      style: GoogleFonts.poppins(fontSize: size.width * 0.05),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              )
            ],
          ),
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
