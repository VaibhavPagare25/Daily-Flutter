import 'package:flutter/material.dart';

class Assignment9 extends StatefulWidget {
  const Assignment9({super.key});

  @override
  State<Assignment9> createState() => _Assignment9State();
}

class _Assignment9State extends State<Assignment9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment9",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.red)),
        ),
      ),
    );
  }
}
