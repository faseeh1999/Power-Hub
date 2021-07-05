import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:power_hub/shared/colors.dart';

LineChartData mainData() {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: Colors.black,
          strokeWidth: 1,
        );
      },
      getDrawingVerticalLine: (value) {
        return FlLine(
          color: Colors.black,
          strokeWidth: 1,
        );
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 2,
        getTextStyles: (value) => const TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.normal,
            fontSize: 16),
        getTitles: (value) {
          // if (value == 0.00) {
          //   return '0.050';
          // }
          // if (value == 0.200) {
          //   return '0.10';
          // }
          switch (value.toInt()) {
            case 0:
              return '0.000';
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
          // if (value.toDouble() == 0) {
          //   return '-0.100';
          // } else if (value.toDouble() == 0.2044) {
          //   return '0.200';
          // }
          switch (value.toInt()) {
            case 0:
              return '0.000';
            case 1:
              return '0.200';
            case 2:
              return '0.400';
            case 3:
              return '0.600';

            case 4:
              return '0.800';

            // case 5:
            //   return '1.000';
          }
          return '';
        },
        reservedSize: 30,
        margin: 12,
      ),
    ),
    borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d), width: 1)),
    minX: 0,
    maxX: 1.2,
    minY: 0,
    maxY: 5,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0.000 * 6, 0),
          FlSpot(0.001 * 6, 0),
          FlSpot(0.002 * 6, 0),
          FlSpot(0.003 * 6, 0),
          FlSpot(0.004 * 6, 0),
          FlSpot(0.005 * 6, 0),
          FlSpot(0.006 * 6, 0),
          FlSpot(0.007 * 6, 0),
          FlSpot(0.008 * 6, 0),
          FlSpot(0.009 * 6, 0),
          FlSpot(0.010 * 6, 0),
          FlSpot(0.011 * 6, 0),
          FlSpot(0.012 * 6, 0),
          FlSpot(0.013 * 6, 0),
          FlSpot(0.014 * 6, 0),
          FlSpot(0.015 * 6, 0),
          FlSpot(0.016 * 6, 0),
          FlSpot(0.017 * 6, 0),
          FlSpot(0.018 * 6, 0),
          FlSpot(0.019 * 6, 0),
          FlSpot(0.020 * 6, 0),
          FlSpot(0.021 * 6, 0),
          FlSpot(0.022 * 6, 0),
          FlSpot(0.023 * 6, 0),
          FlSpot(0.024 * 6, 0),
          FlSpot(0.025 * 6, 0),
          FlSpot(0.026 * 6, 0),
          FlSpot(0.027 * 6, 0),
          FlSpot(0.028 * 6, 0),
          FlSpot(0.029 * 6, 0),
          FlSpot(0.030 * 6, 0),
          FlSpot(0.031 * 6, 0),
          FlSpot(0.032 * 6, 0),
          FlSpot(0.033 * 6, 0),
          FlSpot(0.034 * 6, 0),
          FlSpot(0.035 * 6, 0),
          FlSpot(0.036 * 6, 0),
          FlSpot(0.037 * 6, 0),
          FlSpot(0.038 * 6, 0),
          FlSpot(0.039 * 6, 0),
          FlSpot(0.040 * 6, 0.0084 * 6),
          FlSpot(0.041 * 6, 0.0907 * 6),
          FlSpot(0.042 * 6, 0.1590 * 6),
          FlSpot(0.043 * 6, 0.1981 * 6),
          FlSpot(0.044 * 6, 0.2044 * 6),
          FlSpot(0.045 * 6, 0.2525 * 6),
          FlSpot(0.046 * 6, 0.2610 * 6),
          FlSpot(0.047 * 6, 0.2916 * 6),
          FlSpot(0.048 * 6, 0.3181 * 6),
          FlSpot(0.049 * 6, 0.3566 * 6),
          FlSpot(0.050 * 6, 0.3891 * 6),
          FlSpot(0.051 * 6, 0.4140 * 6),
          FlSpot(0.052 * 6, 0.4490 * 6),
          FlSpot(0.053 * 6, 0.4889 * 6),
          FlSpot(0.054 * 6, 0.5263 * 6),
          FlSpot(0.055 * 6, 0.5440 * 6),
          FlSpot(0.056 * 6, 0.5562 * 6),
          FlSpot(0.057 * 6, 0.5644 * 6),
          FlSpot(0.058 * 6, 0.5636 * 6),
          FlSpot(0.059 * 6, 0.5692 * 6),
          FlSpot(0.060 * 6, 0.5667 * 6),
          FlSpot(0.061 * 6, 0.5695 * 6),
          FlSpot(0.062 * 6, 0.5679 * 6),
          FlSpot(0.063 * 6, 0.5701 * 6),
          FlSpot(0.064 * 6, 0.5784 * 6),
          FlSpot(0.065 * 6, 0.5776 * 6),
          FlSpot(0.066 * 6, 0.5900 * 6),
          FlSpot(0.067 * 6, 0.5895 * 6),
          FlSpot(0.068 * 6, 0.5950 * 6),
          FlSpot(0.069 * 6, 0.5972 * 6),
          FlSpot(0.070 * 6, 0.5839 * 6),
          FlSpot(0.071 * 6, 0.5870 * 6),
          FlSpot(0.072 * 6, 0.5739 * 6),
          FlSpot(0.073 * 6, 0.5652 * 6),
          FlSpot(0.074 * 6, 0.5597 * 6),
          FlSpot(0.075 * 6, 0.5429 * 6),
          FlSpot(0.076 * 6, 0.5442 * 6),
          FlSpot(0.077 * 6, 0.5362 * 6),
          FlSpot(0.078 * 6, 0.5368 * 6),
          FlSpot(0.079 * 6, 0.5468 * 6),
          FlSpot(0.080 * 6, 0.5430 * 6),
          FlSpot(0.081 * 6, 0.5606 * 6),
          FlSpot(0.082 * 6, 0.5517 * 6),
          FlSpot(0.083 * 6, 0.5674 * 6),
          FlSpot(0.084 * 6, 0.5712 * 6),
          FlSpot(0.085 * 6, 0.5661 * 6),
          FlSpot(0.086 * 6, 0.5759 * 6),
          FlSpot(0.087 * 6, 0.5622 * 6),
          FlSpot(0.088 * 6, 0.5692 * 6),
          FlSpot(0.089 * 6, 0.5584 * 6),
          FlSpot(0.090 * 6, 0.5507 * 6),
          FlSpot(0.091 * 6, 0.5538 * 6),
          FlSpot(0.092 * 6, 0.5336 * 6),
          FlSpot(0.093 * 6, 0.5322 * 6),
          FlSpot(0.094 * 6, 0.5207 * 6),
          FlSpot(0.095 * 6, 0.5124 * 6),
          FlSpot(0.096 * 6, 0.5284 * 6),
          FlSpot(0.097 * 6, 0.5154 * 6),
          FlSpot(0.098 * 6, 0.5244 * 6),
          FlSpot(0.099 * 6, 0.5171 * 6),
          FlSpot(0.100 * 6, 0.5167 * 6),
          FlSpot(0.101 * 6, 0.5300 * 6),
          FlSpot(0.102 * 6, 0.5173 * 6),
          FlSpot(0.103 * 6, 0.5404 * 6),
          FlSpot(0.104 * 6, 0.5304 * 6),
          FlSpot(0.105 * 6, 0.5318 * 6),
          FlSpot(0.106 * 6, 0.5354 * 6),
          FlSpot(0.107 * 6, 0.5161 * 6),
          FlSpot(0.108 * 6, 0.5330 * 6),
          FlSpot(0.109 * 6, 0.5151 * 6),
          FlSpot(0.110 * 6, 0.5195 * 6),
          FlSpot(0.111 * 6, 0.5206 * 6),
          FlSpot(0.112 * 6, 0.4975 * 6),
          FlSpot(0.113 * 6, 0.5062 * 6),
          FlSpot(0.114 * 6, 0.4858 * 6),
          FlSpot(0.115 * 6, 0.4913 * 6),
          FlSpot(0.116 * 6, 0.5024 * 6),
          FlSpot(0.117 * 6, 0.4880 * 6),
          FlSpot(0.118 * 6, 0.5032 * 6),
          FlSpot(0.119 * 6, 0.4877 * 6),
          FlSpot(0.120 * 6, 0.4919 * 6),
          FlSpot(0.121 * 6, 0.5026 * 6),
          FlSpot(0.122 * 6, 0.4981 * 6),
          FlSpot(0.123 * 6, 0.5186 * 6),
          FlSpot(0.124 * 6, 0.5008 * 6),
          FlSpot(0.125 * 6, 0.5125 * 6),
          FlSpot(0.126 * 6, 0.5138 * 6),
          FlSpot(0.127 * 6, 0.4941 * 6),
          FlSpot(0.128 * 6, 0.5149 * 6),
          FlSpot(0.129 * 6, 0.4970 * 6),
          FlSpot(0.130 * 6, 0.5132 * 6),
          FlSpot(0.131 * 6, 0.5064 * 6),
          FlSpot(0.132 * 6, 0.4801 * 6),
          FlSpot(0.133 * 6, 0.4946 * 6),
          FlSpot(0.134 * 6, 0.4714 * 6),
          FlSpot(0.135 * 6, 0.4826 * 6),
          FlSpot(0.136 * 6, 0.4887 * 6),
          FlSpot(0.137 * 6, 0.4680 * 6),
          FlSpot(0.138 * 6, 0.4888 * 6),
          FlSpot(0.139 * 6, 0.4604 * 6),
          FlSpot(0.140 * 6, 0.4719 * 6),
          FlSpot(0.141 * 6, 0.4791 * 6),
          FlSpot(0.142 * 6, 0.4706 * 6),
          FlSpot(0.143 * 6, 0.4941 * 6),
          FlSpot(0.144 * 6, 0.4710 * 6),
          FlSpot(0.145 * 6, 0.4874 * 6),
          FlSpot(0.146 * 6, 0.4881 * 6),
          FlSpot(0.147 * 6, 0.4808 * 6),
          FlSpot(0.148 * 6, 0.5026 * 6),
          FlSpot(0.149 * 6, 0.4873 * 6),
          FlSpot(0.150 * 6, 0.5048 * 6),
          FlSpot(0.151 * 6, 0.4927 * 6),
          FlSpot(0.152 * 6, 0.4752 * 6),
          FlSpot(0.153 * 6, 0.4901 * 6),
          FlSpot(0.154 * 6, 0.4601 * 6),
          FlSpot(0.155 * 6, 0.4758 * 6),
          FlSpot(0.156 * 6, 0.4691 * 6),
          FlSpot(0.157 * 6, 0.4544 * 6),
          FlSpot(0.158 * 6, 0.4666 * 6),
          FlSpot(0.159 * 6, 0.4383 * 6),
          FlSpot(0.160 * 6, 0.4538 * 6),
          FlSpot(0.161 * 6, 0.4561 * 6),
          FlSpot(0.162 * 6, 0.4362 * 6),
          FlSpot(0.163 * 6, 0.4675 * 6),
          FlSpot(0.164 * 6, 0.4480 * 6),
          FlSpot(0.165 * 6, 0.4600 * 6),
          FlSpot(0.166 * 6, 0.4652 * 6),
          FlSpot(0.167 * 6, 0.4460 * 6),
          FlSpot(0.168 * 6, 0.4791 * 6),
          FlSpot(0.169 * 6, 0.4572 * 6),
          FlSpot(0.170 * 6, 0.4783 * 6),
          FlSpot(0.171 * 6, 0.4780 * 6),
          FlSpot(0.172 * 6, 0.4616 * 6),
          FlSpot(0.173 * 6, 0.4754 * 6),
          FlSpot(0.174 * 6, 0.4458 * 6),
          FlSpot(0.175 * 6, 0.4646 * 6),
          FlSpot(0.176 * 6, 0.4668 * 6),
          FlSpot(0.177 * 6, 0.4543 * 6),
          FlSpot(0.178 * 6, 0.4626 * 6),
          FlSpot(0.179 * 6, 0.4348 * 6),
          FlSpot(0.180 * 6, 0.4472 * 6),
          FlSpot(0.181 * 6, 0.4540 * 6),
          FlSpot(0.182 * 6, 0.4331 * 6),
          FlSpot(0.183 * 6, 0.4700 * 6),
          FlSpot(0.184 * 6, 0.4453 * 6),
          FlSpot(0.185 * 6, 0.4568 * 6),
          FlSpot(0.186 * 6, 0.4623 * 6),
          FlSpot(0.187 * 6, 0.4505 * 6),
          FlSpot(0.188 * 6, 0.4750 * 6),
          FlSpot(0.189 * 6, 0.4528 * 6),
          FlSpot(0.190 * 6, 0.4773 * 6),
          FlSpot(0.191 * 6, 0.4742 * 6),
          FlSpot(0.192 * 6, 0.4564 * 6),
          FlSpot(0.193 * 6, 0.4712 * 6),
          FlSpot(0.194 * 6, 0.4492 * 6),
          FlSpot(0.195 * 6, 0.4607 * 6),
          FlSpot(0.196 * 6, 0.4646 * 6),
          FlSpot(0.197 * 6, 0.4432 * 6),
          FlSpot(0.198 * 6, 0.4650 * 6),
          FlSpot(0.199 * 6, 0.4405 * 6),
          FlSpot(0.200 * 6, 0.4493 * 6),
        ],
        isCurved: true,
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
