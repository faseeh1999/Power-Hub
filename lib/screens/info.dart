import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_hub/shared/colors.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
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
                    height: size.height * 0.05,
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
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    "Agha Noor Ur Rehman",
                    style: GoogleFonts.poppins(
                        color: Colors.amber, fontSize: size.width * 0.08),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    "Electrical Engineer",
                    style: GoogleFonts.poppins(
                        color: kTextColor, fontSize: size.width * 0.04),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/noor.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    "Ahmad Zahoor",
                    style: GoogleFonts.poppins(
                        color: Colors.amber, fontSize: size.width * 0.08),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    "Electrical Engineer",
                    style: GoogleFonts.poppins(
                        color: kTextColor, fontSize: size.width * 0.04),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/zahoor.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    "Aqib Siddique",
                    style: GoogleFonts.poppins(
                        color: Colors.amber, fontSize: size.width * 0.08),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    "Electrical Engineer",
                    style: GoogleFonts.poppins(
                        color: kTextColor, fontSize: size.width * 0.04),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/aqib.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  )
                ],
              ),
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
