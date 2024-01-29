import 'package:flutter/material.dart';

class Assignment8 extends StatefulWidget {
  const Assignment8({super.key});

  @override
  State<Assignment8> createState() => _Assignment8State();
}

class _Assignment8State extends State<Assignment8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text(
          "Assignment8",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(20),
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(
                color: Colors.red,
                width: 5.0,
              )),

          // decoration:
          //     const ShapeDecoration(shape: CircleBorder(), Border.all(), color: Colors.blue, ),
        ),
      ),
    );
  }
}
