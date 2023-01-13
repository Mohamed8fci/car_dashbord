import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class BarChartUsers extends StatelessWidget {
  const BarChartUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 540,
      height: 340,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Miles Statistics', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height:16.0,),
          Row(
            children: [
              Text('day'),
              SizedBox(width: 10.0,),
              Text('week'),
              SizedBox(width: 10.0,),
              Text('month'),
              SizedBox(width: 300.0,),
              Text('265 miles'),
            ],
          ),
          Container(
            width: 500,
            height: 240,
            child: BarChart(BarChartData(
                borderData: FlBorderData(border: Border.all(width: 0)),
                groupsSpace: 15,
                titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: SideTitles(
                        showTitles: true,
                        getTextStyles: (value) => const TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        margin: defaultPadding,
                        getTitles: (double value) {
                          if (value == 1) {
                            return '1 pm';
                          } if (value == 2) {
                            return '2 pm';
                          }if (value == 3) {
                            return '3 pm';
                          } if (value == 4) {
                            return '4 pm';
                          }if (value == 5) {
                            return '5 pm';
                          }if (value == 6) {
                            return '6 pm';
                          }if (value == 7) {
                            return '7 pm';
                          }else {
                            return '';
                          }
                        }),
                    leftTitles: SideTitles(
                        showTitles: false,
                        getTextStyles: (value) => const TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        margin: defaultPadding,
                        getTitles: (double value) {
                          if (value == 1) {
                            return '40k';
                          } if (value == 3) {
                            return '40k';
                          } if (value == 5) {
                            return '40k';
                          }if (value == 7) {
                            return '40k';
                          }else {
                            return '';
                          }
                        })
                ),
                barGroups: [
                  BarChartGroupData(x: 1, barRods: [
                    BarChartRodData(
                        y: 10,
                        width: 30,
                        colors: [Colors.grey],
                        borderRadius: BorderRadius.circular(8)
                    )
                  ]),
                  BarChartGroupData(x: 2, barRods: [
                    BarChartRodData(
                        y: 3,
                        width: 30,
                        colors: [Colors.grey],
                        borderRadius: BorderRadius.circular(8)
                    )
                  ]),
                  BarChartGroupData(x: 3, barRods: [
                    BarChartRodData(
                        y: 12,
                        width: 30,
                        colors: [primaryColor],
                        borderRadius: BorderRadius.circular(8)
                    )
                  ]),
                  BarChartGroupData(x: 4, barRods: [
                    BarChartRodData(
                        y: 8,
                        width: 30,
                        colors: [Colors.grey],
                        borderRadius: BorderRadius.circular(8)
                    )
                  ]),
                  BarChartGroupData(x: 5, barRods: [
                    BarChartRodData(
                        y: 6,
                        width: 30,
                        colors: [Colors.grey],
                        borderRadius: BorderRadius.circular(8)
                    )
                  ]),
                  BarChartGroupData(x: 6, barRods: [
                    BarChartRodData(
                        y: 10,
                        width: 30,
                        colors: [Colors.grey],
                        borderRadius: BorderRadius.circular(8)
                    )
                  ]),
                  BarChartGroupData(x: 7, barRods: [
                    BarChartRodData(
                        y: 8,
                        width: 30,
                        colors: [Colors.grey],
                        borderRadius: BorderRadius.circular(8)
                    )
                  ]),

                ])),
          ),
        ],
      ),

      );

  }
}