import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment1",
        ),
        backgroundColor: Colors.purpleAccent,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          ),
          Icon(
            Icons.home_filled,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
