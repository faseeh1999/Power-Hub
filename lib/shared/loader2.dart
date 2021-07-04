import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_hub/shared/colors.dart';

class Loading2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kprimary,
      child: Center(
        child: Column(
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
            SpinKitFadingFour(
              color: kLineColor,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
