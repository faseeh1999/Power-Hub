import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:power_hub/shared/colors.dart';

LineChartData mainData() {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: false,
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
              return '0.300';
            case 3:
              return '0.400';

            case 4:
              return '0.500';

            case 5:
              return '0.600';
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
    maxX: 1.0,
    minY: 0,
    maxY: 5,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0.000 * 5, 0.0 * 5),
          FlSpot(0.001 * 5, 0.0 * 5),
          FlSpot(0.002 * 5, 0.0 * 5),
          FlSpot(0.003 * 5, 0.0 * 5),
          FlSpot(0.004 * 5, 0.0 * 5),
          FlSpot(0.005 * 5, 0.0 * 5),
          FlSpot(0.006 * 5, 0.0 * 5),
          FlSpot(0.007 * 5, 0.0 * 5),
          FlSpot(0.008 * 5, 0.0 * 5),
          FlSpot(0.009 * 5, 0.0 * 5),
          FlSpot(0.010 * 5, 0.0 * 5),
          FlSpot(0.011 * 5, 0.0 * 5),
          FlSpot(0.012 * 5, 0.0 * 5),
          FlSpot(0.013 * 5, 0.0 * 5),
          FlSpot(0.014 * 5, 0.0 * 5),
          FlSpot(0.015 * 5, 0.0 * 5),
          FlSpot(0.016 * 5, 0.0 * 5),
          FlSpot(0.017 * 5, 0.0 * 5),
          FlSpot(0.018 * 5, 0.0 * 5),
          FlSpot(0.019 * 5, 0.0 * 5),
          FlSpot(0.020 * 5, 0.0 * 5),
          FlSpot(0.021 * 5, 0.0 * 5),
          FlSpot(0.022 * 5, 0.0 * 5),
          FlSpot(0.023 * 5, 0.0 * 5),
          FlSpot(0.024 * 5, 0.0 * 5),
          FlSpot(0.025 * 5, 0.0 * 5),
          FlSpot(0.026 * 5, 0.0 * 5),
          FlSpot(0.027 * 5, 0.0 * 5),
          FlSpot(0.028 * 5, 0.0 * 5),
          FlSpot(0.029 * 5, 0.0 * 5),
          FlSpot(0.030 * 5, 0.0 * 5),
          FlSpot(0.031 * 5, 0.0 * 5),
          FlSpot(0.032 * 5, 0.0 * 5),
          FlSpot(0.033 * 5, 0.0 * 5),
          FlSpot(0.034 * 5, 0.0 * 5),
          FlSpot(0.035 * 5, 0.0 * 5),
          FlSpot(0.036 * 5, 0.0 * 5),
          FlSpot(0.037 * 5, 0.0 * 5),
          FlSpot(0.038 * 5, 0.0 * 5),
          FlSpot(0.039 * 5, 0.0 * 5),
          FlSpot(0.040 * 5, 0.0116 * 5),
          FlSpot(0.041 * 5, 0.0760 * 5),
          FlSpot(0.042 * 5, 0.1673 * 5),
          FlSpot(0.043 * 5, 0.1988 * 5),
          FlSpot(0.044 * 5, 0.2244 * 5),
          FlSpot(0.045 * 5, 0.1574 * 5),
          FlSpot(0.046 * 5, 0.0522 * 5),
          FlSpot(0.047 * 5, 0.0586 * 5),
          FlSpot(0.048 * 5, 0.0896 * 5),
          FlSpot(0.049 * 5, 0.1600 * 5),
          FlSpot(0.050 * 5, 0.2898 * 5),
          FlSpot(0.051 * 5, 0.4153 * 5),
          FlSpot(0.052 * 5, 0.4800 * 5),
          FlSpot(0.053 * 5, 0.5370 * 5),
          FlSpot(0.054 * 5, 0.6727 * 5),
          FlSpot(0.055 * 5, 0.7193 * 5),
          FlSpot(0.056 * 5, 0.7593 * 5),
          FlSpot(0.057 * 5, 0.7558 * 5),
          FlSpot(0.058 * 5, 0.7067 * 5),
          FlSpot(0.059 * 5, 0.6181 * 5),
          FlSpot(0.060 * 5, 0.5373 * 5),
          FlSpot(0.061 * 5, 0.5457 * 5),
          FlSpot(0.062 * 5, 0.5602 * 5),
          FlSpot(0.063 * 5, 0.5552 * 5),
          FlSpot(0.064 * 5, 0.5251 * 5),
          FlSpot(0.065 * 5, 0.4762 * 5),
          FlSpot(0.066 * 5, 0.3760 * 5),
          FlSpot(0.067 * 5, 0.3529 * 5),
          FlSpot(0.068 * 5, 0.3965 * 5),
          FlSpot(0.069 * 5, 0.4913 * 5),
          FlSpot(0.070 * 5, 0.5436 * 5),
          FlSpot(0.071 * 5, 0.6288 * 5),
          FlSpot(0.072 * 5, 0.6487 * 5),
          FlSpot(0.073 * 5, 0.6086 * 5),
          FlSpot(0.074 * 5, 0.6371 * 5),
          FlSpot(0.075 * 5, 0.6984 * 5),
          FlSpot(0.076 * 5, 0.7078 * 5),
          FlSpot(0.077 * 5, 0.7185 * 5),
          FlSpot(0.078 * 5, 0.6920 * 5),
          FlSpot(0.079 * 5, 0.6153 * 5),
          FlSpot(0.080 * 5, 0.5073 * 5),
          FlSpot(0.081 * 5, 0.5122 * 5),
          FlSpot(0.082 * 5, 0.5360 * 5),
          FlSpot(0.083 * 5, 0.5604 * 5),
          FlSpot(0.084 * 5, 0.5296 * 5),
          FlSpot(0.085 * 5, 0.4856 * 5),
          FlSpot(0.086 * 5, 0.3724 * 5),
          FlSpot(0.087 * 5, 0.2860 * 5),
          FlSpot(0.088 * 5, 0.3027 * 5),
          FlSpot(0.089 * 5, 0.4300 * 5),
          FlSpot(0.090 * 5, 0.4934 * 5),
          FlSpot(0.091 * 5, 0.6120 * 5),
          FlSpot(0.092 * 5, 0.6615 * 5),
          FlSpot(0.093 * 5, 0.6322 * 5),
          FlSpot(0.094 * 5, 0.6210 * 5),
          FlSpot(0.095 * 5, 0.7124 * 5),
          FlSpot(0.096 * 5, 0.7418 * 5),
          FlSpot(0.097 * 5, 0.7806 * 5),
          FlSpot(0.098 * 5, 0.7561 * 5),
          FlSpot(0.099 * 5, 0.6604 * 5),
          FlSpot(0.100 * 5, 0.5341 * 5),
          FlSpot(0.101 * 5, 0.5475 * 5),
          FlSpot(0.102 * 5, 0.5791 * 5),
          FlSpot(0.103 * 5, 0.6135 * 5),
          FlSpot(0.104 * 5, 0.5845 * 5),
          FlSpot(0.105 * 5, 0.5328 * 5),
          FlSpot(0.106 * 5, 0.4020 * 5),
          FlSpot(0.107 * 5, 0.2729 * 5),
          FlSpot(0.108 * 5, 0.2745 * 5),
          FlSpot(0.109 * 5, 0.3594 * 5),
          FlSpot(0.110 * 5, 0.3912 * 5),
          FlSpot(0.111 * 5, 0.4871 * 5),
          FlSpot(0.112 * 5, 0.5491 * 5),
          FlSpot(0.113 * 5, 0.5298 * 5),
          FlSpot(0.114 * 5, 0.5602 * 5),
          FlSpot(0.115 * 5, 0.6754 * 5),
          FlSpot(0.116 * 5, 0.7495 * 5),
          FlSpot(0.117 * 5, 0.8088 * 5),
          FlSpot(0.118 * 5, 0.7985 * 5),
          FlSpot(0.119 * 5, 0.7040 * 5),
          FlSpot(0.120 * 5, 0.5692 * 5),
          FlSpot(0.121 * 5, 0.5885 * 5),
          FlSpot(0.122 * 5, 0.6163 * 5),
          FlSpot(0.123 * 5, 0.6469 * 5),
          FlSpot(0.124 * 5, 0.6133 * 5),
          FlSpot(0.125 * 5, 0.5556 * 5),
          FlSpot(0.126 * 5, 0.4176 * 5),
          FlSpot(0.127 * 5, 0.2784 * 5),
          FlSpot(0.128 * 5, 0.2894 * 5),
          FlSpot(0.129 * 5, 0.3485 * 5),
          FlSpot(0.130 * 5, 0.3969 * 5),
          FlSpot(0.131 * 5, 0.4803 * 5),
          FlSpot(0.132 * 5, 0.5324 * 5),
          FlSpot(0.133 * 5, 0.5112 * 5),
          FlSpot(0.134 * 5, 0.5594 * 5),
          FlSpot(0.135 * 5, 0.6725 * 5),
          FlSpot(0.136 * 5, 0.7561 * 5),
          FlSpot(0.137 * 5, 0.8191 * 5),
          FlSpot(0.138 * 5, 0.8227 * 5),
          FlSpot(0.139 * 5, 0.7300 * 5),
          FlSpot(0.140 * 5, 0.6097 * 5),
          FlSpot(0.141 * 5, 0.6246 * 5),
          FlSpot(0.142 * 5, 0.6517 * 5),
          FlSpot(0.143 * 5, 0.6699 * 5),
          FlSpot(0.144 * 5, 0.6346 * 5),
          FlSpot(0.145 * 5, 0.5655 * 5),
          FlSpot(0.146 * 5, 0.4184 * 5),
          FlSpot(0.147 * 5, 0.2829 * 5),
          FlSpot(0.148 * 5, 0.2875 * 5),
          FlSpot(0.149 * 5, 0.3493 * 5),
          FlSpot(0.150 * 5, 0.3666 * 5),
          FlSpot(0.151 * 5, 0.4468 * 5),
          FlSpot(0.152 * 5, 0.4921 * 5),
          FlSpot(0.153 * 5, 0.4766 * 5),
          FlSpot(0.154 * 5, 0.5050 * 5),
          FlSpot(0.155 * 5, 0.5602 * 5),
          FlSpot(0.156 * 5, 0.5808 * 5),
          FlSpot(0.157 * 5, 0.6128 * 5),
          FlSpot(0.158 * 5, 0.6323 * 5),
          FlSpot(0.159 * 5, 0.6068 * 5),
          FlSpot(0.160 * 5, 0.5643 * 5),
          FlSpot(0.161 * 5, 0.6054 * 5),
          FlSpot(0.162 * 5, 0.6190 * 5),
          FlSpot(0.163 * 5, 0.6109 * 5),
          FlSpot(0.164 * 5, 0.5802 * 5),
          FlSpot(0.165 * 5, 0.5445 * 5),
          FlSpot(0.166 * 5, 0.4469 * 5),
          FlSpot(0.167 * 5, 0.3613 * 5),
          FlSpot(0.168 * 5, 0.3644 * 5),
          FlSpot(0.169 * 5, 0.3864 * 5),
          FlSpot(0.170 * 5, 0.3736 * 5),
          FlSpot(0.171 * 5, 0.4598 * 5),
          FlSpot(0.172 * 5, 0.5320 * 5),
          FlSpot(0.173 * 5, 0.5550 * 5),
          FlSpot(0.174 * 5, 0.6184 * 5),
          FlSpot(0.175 * 5, 0.6828 * 5),
          FlSpot(0.176 * 5, 0.7039 * 5),
          FlSpot(0.177 * 5, 0.7510 * 5),
          FlSpot(0.178 * 5, 0.7698 * 5),
          FlSpot(0.179 * 5, 0.7294 * 5),
          FlSpot(0.180 * 5, 0.6705 * 5),
          FlSpot(0.181 * 5, 0.6861 * 5),
          FlSpot(0.182 * 5, 0.6793 * 5),
          FlSpot(0.183 * 5, 0.6517 * 5),
          FlSpot(0.184 * 5, 0.6141 * 5),
          FlSpot(0.185 * 5, 0.5770 * 5),
          FlSpot(0.186 * 5, 0.4856 * 5),
          FlSpot(0.187 * 5, 0.4186 * 5),
          FlSpot(0.188 * 5, 0.4190 * 5),
          FlSpot(0.189 * 5, 0.4196 * 5),
          FlSpot(0.190 * 5, 0.3793 * 5),
          FlSpot(0.191 * 5, 0.4546 * 5),
          FlSpot(0.192 * 5, 0.5240 * 5),
          FlSpot(0.193 * 5, 0.5532 * 5),
          FlSpot(0.194 * 5, 0.6710 * 5),
          FlSpot(0.195 * 5, 0.7593 * 5),
          FlSpot(0.196 * 5, 0.8408 * 5),
          FlSpot(0.197 * 5, 0.9255 * 5),
          FlSpot(0.198 * 5, 0.9682 * 5),
          FlSpot(0.199 * 5, 0.8978 * 5),
          FlSpot(0.200 * 5, 0.7880 * 5),
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
