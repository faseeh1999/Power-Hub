import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:power_hub/screens/circuit_screens/screen3/avg_data.dart';
import 'package:power_hub/screens/circuit_screens/screen3/main_data.dart';

class LineChartSample2 extends StatefulWidget {
  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    //const Color(0xff23b6e6),

    Colors.amber,
    Colors.orange
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Colors.white10),
            child: Padding(
              padding: EdgeInsets.only(
                  right: size.width * 0.05,
                  left: size.width * 0.05,
                  top: size.height * 0.03,
                  bottom: size.height * 0.03),
              child: LineChart(
                showAvg ? mainData() : avgData(),
                swapAnimationDuration: Duration(seconds: 3),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 60,
          height: 34,
          child: TextButton(
            onPressed: () {
              setState(() {
                showAvg = !showAvg;
              });
            },
            child: Text(
              'Apply',
              style: TextStyle(
                  fontSize: size.width * 0.04,
                  color:
                      showAvg ? Colors.black.withOpacity(0.5) : Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
