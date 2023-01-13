import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class booking_header extends StatelessWidget {
  const booking_header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Booking',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: defaultPadding,),
        Row(
          children: [
        Container(
        margin: EdgeInsets.only(left: defaultPadding),
        padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
        ),
        decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
        ),
        child: Row(
        children: [
        if (!Responsive.isMobile(context))
    Padding(
    padding:
    const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
    child: Text("New"),
    ),
    Icon(Icons.keyboard_arrow_down),
    ],
    ),
    ),
            SizedBox(width: 16.0,),
            Container(
              margin: EdgeInsets.only(left: defaultPadding),
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: defaultPadding / 2,
              ),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.white10),
              ),
              child: Row(
                children: [
                  if (!Responsive.isMobile(context))
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                      child: Text("Toyota"),
                    ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            SizedBox(width: 660.0,),
            Container(
              margin: EdgeInsets.only(left: defaultPadding),
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: defaultPadding / 2,
              ),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.white10),
              ),
              child: Row(
                children: [
                  if (!Responsive.isMobile(context))
                  Icon(Icons.dashboard_outlined),
                ],
              ),
            ),
            SizedBox(width: 8.0,),
            Container(
              margin: EdgeInsets.only(left: defaultPadding),
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: defaultPadding / 2,
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.deepPurple),
              ),
              child: Row(
                children: [
                  if (!Responsive.isMobile(context))
                    Icon(Icons.drag_handle_sharp),
                ],
              ),
            ),
          ],
        ),

      ],
    );
  }
}
