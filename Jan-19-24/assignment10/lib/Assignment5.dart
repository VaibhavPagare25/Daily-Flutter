import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment5",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/cars2.jpg",
              width: 300,
              height: 300,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              "assets/images/JunngleBook1.jpg",
              width: 300,
              height: 300,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              "assets/images/frozen.jpg",
              width: 300,
              height: 300,
              //fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
