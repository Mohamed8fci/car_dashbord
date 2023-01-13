import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'linechart.dart';

class BarChartUsersSide extends StatelessWidget {
  const BarChartUsersSide({Key? key}) : super(key: key);

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
          Text('Car Statistics', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height:16.0,),
          Row(
            children: [
              Text('20 february 2022'),
              SizedBox(width: 260.0,),
              Text('day'),
              SizedBox(width: 10.0,),
              Text('week'),
              SizedBox(width: 10.0,),
              Text('month'),

            ],
          ),
          Container(
            width: 500,
            height: 240,
            child: ViewLineChart(),
          ),
        ],
      ),

    );

  }
}