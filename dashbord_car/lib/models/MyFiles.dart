import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CloudStorageInfo {
  final String?  title,percent;
  final double? value;
  final Color? color;
  final IconData? icon;

  CloudStorageInfo({
    required this.icon,
    this.title,
    this.color,
    this.value,
    this.percent,

  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Energy",
    icon: FontAwesomeIcons.bolt,
    color: Colors.white,
    value: 0.45,
    percent: '45%',

  ),
  CloudStorageInfo(
    title: "Range",
    icon: Icons.height,
    color: Colors.red,
    value: 0.50,
    percent: "157k%"
  ),
  CloudStorageInfo(
    title: "Break fluid",
    icon: Icons.arrow_drop_down_circle,
    color: Colors.deepPurple,
    value: 0.09,
    percent: "9%",
  ),
  CloudStorageInfo(
    title: "Tire Wear",
    icon: Icons.watch,
    color: Colors.amber,
    value: 0.25,
    percent: "25%",
  ),
];
