import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:power_hub/colors.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kprimary,
      child: Center(
        child: SpinKitFadingFour(
          color: kLineColor,
          size: 50.0,
        ),
      ),
    );
  }
}
