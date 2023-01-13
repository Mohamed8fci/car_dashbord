import 'package:flutter/material.dart';

class CloudStorageInfostaticties {
  final String?  title,percent,carname,kilo,speed;
  final double? value;
  final Color? color;
  final AssetImage? image;


  CloudStorageInfostaticties({
    this.title,
    this.color,
    this.value,
    this.percent,
    this.carname,
    this.kilo,
    this.speed,
    this.image,
  });
}

List statictisDemoFiles = [
  CloudStorageInfostaticties(
    title: "64% Recommended",
    color: Colors.amberAccent,
    value: 0.45,
    percent: '45%',
    carname: 'Mini Cooper',
    kilo: '132k',
    speed:'32/h',
    image: AssetImage('images/carimage1.png',),
  ),
  CloudStorageInfostaticties(
      title: "72% Recommended",
    speed:'32/h',
      color: Colors.tealAccent,
      value: 0.50,
      percent: "157k%",
    carname: 'Porsche 911 Carrera',
    kilo: '132k',
    image: AssetImage('images/carimage1.png',),
  ),
  CloudStorageInfostaticties(
      title: "56% Recommended",
      color: Colors.deepOrangeAccent,
      value: 0.50,
      percent: "157k%",
    carname: 'Porsche 911 Carrera',
    kilo: '132k',
    speed:'30/h',
    image: AssetImage('images/carimage1.png',),
  ),
];
