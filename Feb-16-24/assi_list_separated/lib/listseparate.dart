import 'package:flutter/material.dart';

class ListSeparate extends StatefulWidget {
  const ListSeparate({super.key});

  @override
  State<ListSeparate> createState() => _ListSeparateState();
}

class _ListSeparateState extends State<ListSeparate> {
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
    return ListView.separated(
      itemCount: 3,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 700,
          child: ListView.builder(
              itemCount: images.length,
              itemBuilder: (context, count) {
                return Image.asset(
                  images[count],
                  height: 200,
                  width: 200,
                );
              }),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.purple,
          thickness: 10,
        );
      },
    );
  }
}
