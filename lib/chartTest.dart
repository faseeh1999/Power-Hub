import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:power_hub/colors.dart';

class LineChartSample2 extends StatefulWidget {
  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    //const Color(0xff23b6e6),
    const Color(0xff02d39a),
    kLineColor,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Color(0xff2c2e4f)),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 18.0, left: 12.0, top: 24, bottom: 12),
              child: LineChart(
                showAvg ? avgData() : mainData(),
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
              'avg',
              style: TextStyle(
                  fontSize: 12,
                  color:
                      showAvg ? Colors.white.withOpacity(0.5) : Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0.000,
      maxX: 0.200,
      minY: 0.0000,
      maxY: 0.6000,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0.000, 0),
            FlSpot(0.001, 0),
            FlSpot(0.002, 0),
            FlSpot(0.003, 0),
            FlSpot(0.004, 0),
            FlSpot(0.005, 0),
            FlSpot(0.006, 0),
            FlSpot(0.007, 0),
            FlSpot(0.008, 0),
            FlSpot(0.009, 0),
            FlSpot(0.010, 0),
            FlSpot(0.011, 0),
            FlSpot(0.012, 0),
            FlSpot(0.013, 0),
            FlSpot(0.014, 0),
            FlSpot(0.015, 0),
            FlSpot(0.016, 0),
            FlSpot(0.017, 0),
            FlSpot(0.018, 0),
            FlSpot(0.019, 0),
            FlSpot(0.020, 0),
            FlSpot(0.021, 0),
            FlSpot(0.022, 0),
            FlSpot(0.023, 0),
            FlSpot(0.024, 0),
            FlSpot(0.025, 0),
            FlSpot(0.026, 0),
            FlSpot(0.027, 0),
            FlSpot(0.028, 0),
            FlSpot(0.029, 0),
            FlSpot(0.030, 0),
            FlSpot(0.031, 0),
            FlSpot(0.032, 0),
            FlSpot(0.033, 0),
            FlSpot(0.034, 0),
            FlSpot(0.035, 0),
            FlSpot(0.036, 0),
            FlSpot(0.037, 0),
            FlSpot(0.038, 0),
            FlSpot(0.039, 0),
            FlSpot(0.040, 0.0019),
            FlSpot(0.041, 0.0074),
            FlSpot(0.042, -0.0009),
            FlSpot(0.043, 0.0118),
            FlSpot(0.044, 0.0047),
            FlSpot(0.045, 0.0669),
            FlSpot(0.046, 0.077),
            FlSpot(0.047, 0.0242),
            FlSpot(0.048, 0.0079),
            FlSpot(0.049, 0.00007),
            FlSpot(0.050, 0.1251),
            FlSpot(0.051, 0.1632),
            FlSpot(0.052, 0.3152),
            FlSpot(0.053, 0.3412),
            FlSpot(0.054, 0.2457),
            FlSpot(0.055, 0.1817),
            FlSpot(0.056, 0.1335),
            FlSpot(0.057, 0.2230),
            FlSpot(0.058, 0.2787),
            FlSpot(0.059, 0.3307),
            FlSpot(0.060, 0.2414),
            FlSpot(0.061, 0.1404),
            FlSpot(0.062, 0.1021),
            FlSpot(0.063, 0.1188),
            FlSpot(0.064, 0.2137),
            FlSpot(0.065, 0.3177),
            FlSpot(0.066, 0.3565),
            FlSpot(0.067, 0.2374),
            FlSpot(0.068, 0.1779),
            FlSpot(0.069, 0.1296),
            FlSpot(0.070, 0.2097),
            FlSpot(0.071, 0.3338),
            FlSpot(0.072, 0.4160),
            FlSpot(0.073, 0.4018),
            FlSpot(0.074, 0.2387),
            FlSpot(0.075, 0.2111),
            FlSpot(0.076, 0.1795),
            FlSpot(0.077, 0.2806),
            FlSpot(0.078, 0.4032),
            FlSpot(0.079, 0.4336),
            FlSpot(0.080, 0.3593),
            FlSpot(0.081, 0.2068),
            FlSpot(0.082, 0.1694),
            FlSpot(0.083, 0.1978),
            FlSpot(0.084, 0.2810),
            FlSpot(0.085, 0.4318),
            FlSpot(0.086, 0.4398),
            FlSpot(0.087, 0.3404),
            FlSpot(0.088, 0.2399),
            FlSpot(0.089, 0.2090),
            FlSpot(0.090, 0.3042),
            FlSpot(0.091, 0.4012),
            FlSpot(0.092, 0.5235),
            FlSpot(0.093, 0.4866),
            FlSpot(0.094, 0.3355),
            FlSpot(0.095, 0.2578),
            FlSpot(0.096, 0.2729),
            FlSpot(0.097, 0.3380),
            FlSpot(0.098, 0.4315),
            FlSpot(0.099, 0.4643),
            FlSpot(0.100, 0.3828),
            FlSpot(0.101, 0.2247),
            FlSpot(0.102, 0.1801),
            FlSpot(0.103, 0.2209),
            FlSpot(0.104, 0.3127),
            FlSpot(0.105, 0.4751),
            FlSpot(0.106, 0.4813),
            FlSpot(0.107, 0.3698),
            FlSpot(0.108, 0.2650),
            FlSpot(0.109, 0.2173),
            FlSpot(0.110, 0.3341),
            FlSpot(0.111, 0.4396),
            FlSpot(0.112, 0.5661),
            FlSpot(0.113, 0.5235),
            FlSpot(0.114, 0.3602),
            FlSpot(0.115, 0.2776),
            FlSpot(0.116, 0.2759),
            FlSpot(0.117, 0.3713),
            FlSpot(0.118, 0.4777),
            FlSpot(0.119, 0.5058),
            FlSpot(0.120, 0.4166),
            FlSpot(0.121, 0.2667),
            FlSpot(0.122, 0.1863),
            FlSpot(0.123, 0.2587),
            FlSpot(0.124, 0.3441),
            FlSpot(0.125, 0.4977),
            FlSpot(0.126, 0.4971),
            FlSpot(0.127, 0.3926),
            FlSpot(0.128, 0.3005),
            FlSpot(0.129, 0.2699),
            FlSpot(0.130, 0.3639),
            FlSpot(0.131, 0.4784),
            FlSpot(0.132, 0.5993),
            FlSpot(0.133, 0.5227),
            FlSpot(0.134, 0.3847),
            FlSpot(0.135, 0.3123),
            FlSpot(0.136, 0.3338),
            FlSpot(0.137, 0.3994),
            FlSpot(0.138, 0.5163),
            FlSpot(0.139, 0.5542),
            FlSpot(0.140, 0.4015),
            FlSpot(0.141, 0.2972),
            FlSpot(0.142, 0.2360),
            FlSpot(0.143, 0.3227),
            FlSpot(0.144, 0.3869),
            FlSpot(0.145, 0.5384),
            FlSpot(0.146, 0.5483),
            FlSpot(0.147, 0.3663),
            FlSpot(0.148, 0.3189),
            FlSpot(0.149, 0.2663),
            FlSpot(0.150, 0.4120),
            FlSpot(0.151, 0.5098),
            FlSpot(0.152, 0.6279),
            FlSpot(0.153, 0.5774),
            FlSpot(0.154, 0.3670),
            FlSpot(0.155, 0.3284),
            FlSpot(0.156, 0.3320),
            FlSpot(0.157, 0.4438),
            FlSpot(0.158, 0.5503),
            FlSpot(0.159, 0.5851),
            FlSpot(0.160, 0.4741),
            FlSpot(0.161, 0.3078),
            FlSpot(0.162, 0.2566),
            FlSpot(0.163, 0.3283),
            FlSpot(0.164, 0.4608),
            FlSpot(0.165, 0.5692),
            FlSpot(0.166, 0.5724),
            FlSpot(0.167, 0.4352),
            FlSpot(0.168, 0.3211),
            FlSpot(0.169, 0.2884),
            FlSpot(0.170, 0.4106),
            FlSpot(0.171, 0.5804),
            FlSpot(0.172, 0.6470),
            FlSpot(0.173, 0.5941),
            FlSpot(0.174, 0.4160),
            FlSpot(0.175, 0.3250),
            FlSpot(0.176, 0.3561),
            FlSpot(0.177, 0.4466),
            FlSpot(0.178, 0.6021),
            FlSpot(0.179, 0.6103),
            FlSpot(0.180, 0.4980),
            FlSpot(0.181, 0.3388),
            FlSpot(0.182, 0.2755),
            FlSpot(0.183, 0.3553),
            FlSpot(0.184, 0.4488),
            FlSpot(0.185, 0.6082),
            FlSpot(0.186, 0.5918),
            FlSpot(0.187, 0.4518),
            FlSpot(0.188, 0.3338),
            FlSpot(0.189, 0.3097),
            FlSpot(0.190, 0.4291),
            FlSpot(0.191, 0.5583),
            FlSpot(0.192, 0.6619),
            FlSpot(0.193, 0.6065),
            FlSpot(0.194, 0.4279),
            FlSpot(0.195, 0.3342),
            FlSpot(0.196, 0.3963),
            FlSpot(0.197, 0.4576),
            FlSpot(0.198, 0.5945),
            FlSpot(0.199, 0.6093),
            FlSpot(0.200, 0.5130),

            // FlSpot(0, 3),
            // FlSpot(2.6, 2),
            // FlSpot(4.9, 5),
            // FlSpot(6.8, 3.1),
            // FlSpot(8, 4),
            // FlSpot(9.5, 3),
            // FlSpot(11, 4),
          ],
          isCurved: false,
          colors: gradientColors,
          barWidth: 2.5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            // FlSpot(0.000, 0),
            // FlSpot(0.001, 0),
            // FlSpot(0.002, 0),
            // FlSpot(0.003, 0),
            // FlSpot(0.004, 0),
            // FlSpot(0.005, 0),
            // FlSpot(0.006, 0),
            // FlSpot(0.007, 0),
            // FlSpot(0.008, 0),
            // FlSpot(0.009, 0),
            // FlSpot(0.010, 0),
            // FlSpot(0.011, 0),
            // FlSpot(0.012, 0),
            // FlSpot(0.013, 0),
            // FlSpot(0.014, 0),
            // FlSpot(0.015, 0),
            // FlSpot(0.016, 0),
            // FlSpot(0.017, 0),
            // FlSpot(0.018, 0),
            // FlSpot(0.019, 0),
            // FlSpot(0.020, 0),
            // FlSpot(0.021, 0),
            // FlSpot(0.022, 0),
            // FlSpot(0.023, 0),
            // FlSpot(0.024, 0),
            // FlSpot(0.025, 0),
            // FlSpot(0.026, 0),
            // FlSpot(0.027, 0),

            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: false,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2),
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
          ]),
        ),
      ],
    );
  }
}
