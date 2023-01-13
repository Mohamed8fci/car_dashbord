import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../dashboard/components/header.dart';
import 'booking.dart';
import 'booking_header.dart';


class Bookingcomponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            booking_header(),
            SizedBox(height: defaultPadding),
            Booking(),

          ],
        ),
      ),
    );
  }
}
