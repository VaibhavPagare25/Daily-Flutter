import 'package:flutter/material.dart';

class CricSeparate extends StatefulWidget {
  const CricSeparate({super.key});

  @override
  State<CricSeparate> createState() => _CricSeparateState();
}

class _CricSeparateState extends State<CricSeparate> {
  List images = [
    "assets/images/ishan.jpg",
    "assets/images/klrahul.jpg",
    "assets/images/shubhman.jpg",
    "assets/images/ruturaj.jpg",
    "assets/images/surya.jpg",
    "assets/images/yashasvi.jpg",
  ];

  Map<String, dynamic> cric = {
    "test": [
      "assets/images/ishan.jpg",
      "assets/images/klrahul.jpg",
      "assets/images/shubhman.jpg"
    ],
    "t20": [
      "assets/images/ruturaj.jpg",
      "assets/images/surya.jpg",
      "assets/images/yashasvi.jpg"
    ],
  };

  @override
  Widget build(BuildContext context) {
    return 
  }
}
