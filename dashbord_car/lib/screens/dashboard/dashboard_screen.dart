import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/my_fields.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/Statisticsonlypadge.dart';
import 'components/header.dart';
import 'components/statcties.dart';
import 'components/statictiessidepage.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      Row(
                        children: [
                          BarChartUsers(),
                          SizedBox(width: 20.0,),
                          BarChartUsersSide(),
                        ],
                      ),
                      SizedBox(height: defaultPadding,),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      staticties(),
                    ],
                  ),

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
