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
    maxX: 1.0,
    minY: 0,
    maxY: 5,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0.000 * 5, 0),
          FlSpot(0.001 * 5, 0),
          FlSpot(0.002 * 5, 0),
          FlSpot(0.003 * 5, 0),
          FlSpot(0.004 * 5, 0),
          FlSpot(0.005 * 5, 0),
          FlSpot(0.006 * 5, 0),
          FlSpot(0.007 * 5, 0),
          FlSpot(0.008 * 5, 0),
          FlSpot(0.009 * 5, 0),
          FlSpot(0.010 * 5, 0),
          FlSpot(0.011 * 5, 0),
          FlSpot(0.012 * 5, 0),
          FlSpot(0.013 * 5, 0),
          FlSpot(0.014 * 5, 0),
          FlSpot(0.015 * 5, 0),
          FlSpot(0.016 * 5, 0),
          FlSpot(0.017 * 5, 0),
          FlSpot(0.018 * 5, 0),
          FlSpot(0.019 * 5, 0),
          FlSpot(0.020 * 5, 0),
          FlSpot(0.021 * 5, 0),
          FlSpot(0.022 * 5, 0),
          FlSpot(0.023 * 5, 0),
          FlSpot(0.024 * 5, 0),
          FlSpot(0.025 * 5, 0),
          FlSpot(0.026 * 5, 0),
          FlSpot(0.027 * 5, 0),
          FlSpot(0.028 * 5, 0),
          FlSpot(0.029 * 5, 0),
          FlSpot(0.030 * 5, 0),
          FlSpot(0.031 * 5, 0),
          FlSpot(0.032 * 5, 0),
          FlSpot(0.033 * 5, 0),
          FlSpot(0.034 * 5, 0),
          FlSpot(0.035 * 5, 0),
          FlSpot(0.036 * 5, 0),
          FlSpot(0.037 * 5, 0),
          FlSpot(0.038 * 5, 0),
          FlSpot(0.039 * 5, 0),
          FlSpot(0.040 * 5, 0.0084 * 5),
          FlSpot(0.041 * 5, 0.0907 * 5),
          FlSpot(0.042 * 5, 0.1590 * 5),
          FlSpot(0.043 * 5, 0.1981 * 5),
          FlSpot(0.044 * 5, 0.2044 * 5),
          FlSpot(0.045 * 5, 0.2525 * 5),
          FlSpot(0.046 * 5, 0.2610 * 5),
          FlSpot(0.047 * 5, 0.2916 * 5),
          FlSpot(0.048 * 5, 0.3181 * 5),
          FlSpot(0.049 * 5, 0.3566 * 5),
          FlSpot(0.050 * 5, 0.3891 * 5),
          FlSpot(0.051 * 5, 0.4140 * 5),
          FlSpot(0.052 * 5, 0.4490 * 5),
          FlSpot(0.053 * 5, 0.4889 * 5),
          FlSpot(0.054 * 5, 0.5263 * 5),
          FlSpot(0.055 * 5, 0.5440 * 5),
          FlSpot(0.056 * 5, 0.5562 * 5),
          FlSpot(0.057 * 5, 0.5644 * 5),
          FlSpot(0.058 * 5, 0.5636 * 5),
          FlSpot(0.059 * 5, 0.5692 * 5),
          FlSpot(0.060 * 5, 0.5667 * 5),
          FlSpot(0.061 * 5, 0.5695 * 5),
          FlSpot(0.062 * 5, 0.5679 * 5),
          FlSpot(0.063 * 5, 0.5701 * 5),
          FlSpot(0.064 * 5, 0.5784 * 5),
          FlSpot(0.065 * 5, 0.5776 * 5),
          FlSpot(0.066 * 5, 0.5900 * 5),
          FlSpot(0.067 * 5, 0.5895 * 5),
          FlSpot(0.068 * 5, 0.5950 * 5),
          FlSpot(0.069 * 5, 0.5972 * 5),
          FlSpot(0.070 * 5, 0.5839 * 5),
          FlSpot(0.071 * 5, 0.5870 * 5),
          FlSpot(0.072 * 5, 0.5739 * 5),
          FlSpot(0.073 * 5, 0.5652 * 5),
          FlSpot(0.074 * 5, 0.5597 * 5),
          FlSpot(0.075 * 5, 0.5429 * 5),
          FlSpot(0.076 * 5, 0.5442 * 5),
          FlSpot(0.077 * 5, 0.5362 * 5),
          FlSpot(0.078 * 5, 0.5368 * 5),
          FlSpot(0.079 * 5, 0.5468 * 5),
          FlSpot(0.080 * 5, 0.5430 * 5),
          FlSpot(0.081 * 5, 0.5606 * 5),
          FlSpot(0.082 * 5, 0.5517 * 5),
          FlSpot(0.083 * 5, 0.5674 * 5),
          FlSpot(0.084 * 5, 0.5712 * 5),
          FlSpot(0.085 * 5, 0.5661 * 5),
          FlSpot(0.086 * 5, 0.5759 * 5),
          FlSpot(0.087 * 5, 0.5622 * 5),
          FlSpot(0.088 * 5, 0.5692 * 5),
          FlSpot(0.089 * 5, 0.5584 * 5),
          FlSpot(0.090 * 5, 0.5507 * 5),
          FlSpot(0.091 * 5, 0.5538 * 5),
          FlSpot(0.092 * 5, 0.5336 * 5),
          FlSpot(0.093 * 5, 0.5322 * 5),
          FlSpot(0.094 * 5, 0.5207 * 5),
          FlSpot(0.095 * 5, 0.5124 * 5),
          FlSpot(0.096 * 5, 0.5284 * 5),
          FlSpot(0.097 * 5, 0.5154 * 5),
          FlSpot(0.098 * 5, 0.5244 * 5),
          FlSpot(0.099 * 5, 0.5171 * 5),
          FlSpot(0.100 * 5, 0.5167 * 5),
          FlSpot(0.101 * 5, 0.5300 * 5),
          FlSpot(0.102 * 5, 0.5173 * 5),
          FlSpot(0.103 * 5, 0.5404 * 5),
          FlSpot(0.104 * 5, 0.5304 * 5),
          FlSpot(0.105 * 5, 0.5318 * 5),
          FlSpot(0.106 * 5, 0.5354 * 5),
          FlSpot(0.107 * 5, 0.5161 * 5),
          FlSpot(0.108 * 5, 0.5330 * 5),
          FlSpot(0.109 * 5, 0.5151 * 5),
          FlSpot(0.110 * 5, 0.5195 * 5),
          FlSpot(0.111 * 5, 0.5206 * 5),
          FlSpot(0.112 * 5, 0.4975 * 5),
          FlSpot(0.113 * 5, 0.5062 * 5),
          FlSpot(0.114 * 5, 0.4858 * 5),
          FlSpot(0.115 * 5, 0.4913 * 5),
          FlSpot(0.116 * 5, 0.5024 * 5),
          FlSpot(0.117 * 5, 0.4880 * 5),
          FlSpot(0.118 * 5, 0.5032 * 5),
          FlSpot(0.119 * 5, 0.4877 * 5),
          FlSpot(0.120 * 5, 0.4919 * 5),
          FlSpot(0.121 * 5, 0.5026 * 5),
          FlSpot(0.122 * 5, 0.4981 * 5),
          FlSpot(0.123 * 5, 0.5186 * 5),
          FlSpot(0.124 * 5, 0.5008 * 5),
          FlSpot(0.125 * 5, 0.5125 * 5),
          FlSpot(0.126 * 5, 0.5138 * 5),
          FlSpot(0.127 * 5, 0.4941 * 5),
          FlSpot(0.128 * 5, 0.5149 * 5),
          FlSpot(0.129 * 5, 0.4970 * 5),
          FlSpot(0.130 * 5, 0.5132 * 5),
          FlSpot(0.131 * 5, 0.5064 * 5),
          FlSpot(0.132 * 5, 0.4801 * 5),
          FlSpot(0.133 * 5, 0.4946 * 5),
          FlSpot(0.134 * 5, 0.4714 * 5),
          FlSpot(0.135 * 5, 0.4826 * 5),
          FlSpot(0.136 * 5, 0.4887 * 5),
          FlSpot(0.137 * 5, 0.4680 * 5),
          FlSpot(0.138 * 5, 0.4888 * 5),
          FlSpot(0.139 * 5, 0.4604 * 5),
          FlSpot(0.140 * 5, 0.4719 * 5),
          FlSpot(0.141 * 5, 0.4791 * 5),
          FlSpot(0.142 * 5, 0.4706 * 5),
          FlSpot(0.143 * 5, 0.4941 * 5),
          FlSpot(0.144 * 5, 0.4710 * 5),
          FlSpot(0.145 * 5, 0.4874 * 5),
          FlSpot(0.146 * 5, 0.4881 * 5),
          FlSpot(0.147 * 5, 0.4808 * 5),
          FlSpot(0.148 * 5, 0.5026 * 5),
          FlSpot(0.149 * 5, 0.4873 * 5),
          FlSpot(0.150 * 5, 0.5048 * 5),
          FlSpot(0.151 * 5, 0.4927 * 5),
          FlSpot(0.152 * 5, 0.4752 * 5),
          FlSpot(0.153 * 5, 0.4901 * 5),
          FlSpot(0.154 * 5, 0.4601 * 5),
          FlSpot(0.155 * 5, 0.4758 * 5),
          FlSpot(0.156 * 5, 0.4691 * 5),
          FlSpot(0.157 * 5, 0.4544 * 5),
          FlSpot(0.158 * 5, 0.4666 * 5),
          FlSpot(0.159 * 5, 0.4383 * 5),
          FlSpot(0.160 * 5, 0.4538 * 5),
          FlSpot(0.161 * 5, 0.4561 * 5),
          FlSpot(0.162 * 5, 0.4362 * 5),
          FlSpot(0.163 * 5, 0.4675 * 5),
          FlSpot(0.164 * 5, 0.4480 * 5),
          FlSpot(0.165 * 5, 0.4600 * 5),
          FlSpot(0.166 * 5, 0.4652 * 5),
          FlSpot(0.167 * 5, 0.4460 * 5),
          FlSpot(0.168 * 5, 0.4791 * 5),
          FlSpot(0.169 * 5, 0.4572 * 5),
          FlSpot(0.170 * 5, 0.4783 * 5),
          FlSpot(0.171 * 5, 0.4780 * 5),
          FlSpot(0.172 * 5, 0.4616 * 5),
          FlSpot(0.173 * 5, 0.4754 * 5),
          FlSpot(0.174 * 5, 0.4458 * 5),
          FlSpot(0.175 * 5, 0.4646 * 5),
          FlSpot(0.176 * 5, 0.4668 * 5),
          FlSpot(0.177 * 5, 0.4543 * 5),
          FlSpot(0.178 * 5, 0.4626 * 5),
          FlSpot(0.179 * 5, 0.4348 * 5),
          FlSpot(0.180 * 5, 0.4472 * 5),
          FlSpot(0.181 * 5, 0.4540 * 5),
          FlSpot(0.182 * 5, 0.4331 * 5),
          FlSpot(0.183 * 5, 0.4700 * 5),
          FlSpot(0.184 * 5, 0.4453 * 5),
          FlSpot(0.185 * 5, 0.4568 * 5),
          FlSpot(0.186 * 5, 0.4623 * 5),
          FlSpot(0.187 * 5, 0.4505 * 5),
          FlSpot(0.188 * 5, 0.4750 * 5),
          FlSpot(0.189 * 5, 0.4528 * 5),
          FlSpot(0.190 * 5, 0.4773 * 5),
          FlSpot(0.191 * 5, 0.4742 * 5),
          FlSpot(0.192 * 5, 0.4564 * 5),
          FlSpot(0.193 * 5, 0.4712 * 5),
          FlSpot(0.194 * 5, 0.4492 * 5),
          FlSpot(0.195 * 5, 0.4607 * 5),
          FlSpot(0.196 * 5, 0.4646 * 5),
          FlSpot(0.197 * 5, 0.4432 * 5),
          FlSpot(0.198 * 5, 0.4650 * 5),
          FlSpot(0.199 * 5, 0.4405 * 5),
          FlSpot(0.200 * 5, 0.4493 * 5),
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
