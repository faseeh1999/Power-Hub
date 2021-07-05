import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:power_hub/shared/colors.dart';

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
              return '0.050';
            case 4:
              return '0.100';
            case 6:
              return '0.150';
            case 8:
              return '0.200';
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
              return '0.200';
            case 2:
              return '0.400';
            case 3:
              return '0.600';

            case 4:
              return '0.800';

            case 5:
              return '1.000';
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
