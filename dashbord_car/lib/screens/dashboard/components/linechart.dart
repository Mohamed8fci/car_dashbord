import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ViewLineChart extends StatefulWidget {
  const ViewLineChart({Key? key}) : super(key: key);

  @override
  _ViewLineChartState createState() => _ViewLineChartState();
}

class _ViewLineChartState extends State<ViewLineChart> {
  List<Color> gradientColors = [
    primaryColor,
    secondaryColor,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        defaultPadding,
        defaultPadding,
        defaultPadding,
        defaultPadding,
      ),
      child: LineChart(LineChartData(
          gridData: FlGridData(
            show: false,
          ),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
                showTitles: true,
                reservedSize: 24,
                getTextStyles: (value) => TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                getTitles: (value) {
                  switch(value.toInt()){
                    case 1:
                      return '7 am';
                    case 4:
                      return '9 am';
                    case 7:
                      return '11 am';
                    case 10:
                      return '1 pm';
                    case 13:
                      return '3 pm';
                    case 16:
                      return '5 pm';
                    case 19:
                      return '7 pm';
                    case 22:
                      return '9 pm';
                  }
                  return '';
                }
            ),
          ),
          borderData: FlBorderData(
            show: false,
          ),
          minX: 0,
          maxX: 24,
          maxY: 0,
          minY: 6,
          lineBarsData: [
            LineChartBarData(
                spots: [
                  FlSpot(0, 3),
                  FlSpot(4, 2),
                  FlSpot(9, 4),
                  FlSpot(12, 3),
                  FlSpot(15, 5),
                  FlSpot(18, 3),
                  FlSpot(20, 4),
                  FlSpot(24, 2)
                ],
                isCurved: true,
                colors: [Colors.deepOrange],
                barWidth: 3,
                isStrokeCapRound: true,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                    show: true,
                    colors:
                    gradientColors.map((e) => e.withOpacity(0.3)).toList(),
                    gradientFrom: Offset(0, 0),
                    gradientTo: Offset(0, 1.75)))
          ])),
    );
  }
}
