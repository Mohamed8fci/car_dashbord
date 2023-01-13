import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/statictiesfiles.dart';

class statictisInfoCard extends StatelessWidget {
  const statictisInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfostaticties info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: info.color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
             children: [
               Icon(Icons.autorenew_sharp),
               Text(
                 info.title!,
                 style: TextStyle(fontSize: 16.0,
                     fontWeight: FontWeight.bold
                 ),
               ),
             ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Image(image: info.image!),
          SizedBox(height: 15,),
          Text(
            info.carname!,
            style: TextStyle(fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 12,),
          Row(
            children: [
              Icon(Icons.wifi_protected_setup),
              SizedBox(width: 8,),
              Text(info.kilo!),
              SizedBox(width: 8,),
              Icon(Icons.arrow_circle_up_sharp),
              SizedBox(width: 8,),
              Icon(Icons.person_pin_circle),
              SizedBox(width: 140,),
              Icon(Icons.attach_money),
              Text(info.speed!),

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
