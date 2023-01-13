import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants.dart';
import '../../../models/bookingmodelfile.dart';

class BookingInfoCard extends StatelessWidget {
  const BookingInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfobooking info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
             children: [
               Text(
                 info.carname!,
                 style: TextStyle(fontSize: 16.0,
                     fontWeight: FontWeight.bold
                 ),
               ),
               SizedBox(width: 120,),
               Icon(FontAwesomeIcons.heart),
             ],
          ),
          SizedBox(
            height: 12.0,
          ),
          Text('Coupe'),
          SizedBox(
            height: 12.0,
          ),
          Image(image: info.image!),
          SizedBox(height: 15,),
          Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 8,),
              Text('4'),
              SizedBox(width: 12,),
              Icon(Icons.repeat),
              SizedBox(width: 8,),
              Text('Manual'),
              SizedBox(width: 120,),
              Icon(Icons.attach_money),
              Text('400'),
              Text('/d'),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
