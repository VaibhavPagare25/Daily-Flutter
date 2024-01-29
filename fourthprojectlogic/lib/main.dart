import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment3(),
    );
  }
}

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int? selectedIndex = 0;
  
  final List<int> paliList = [2345, 2345, 2332];

  void showNextNumber() {
    List<int> number = paliList;
    int y = 0;
    List<int> result = number;

    setState(() {
      if (selectedIndex! < paliList.length - 1) {
        while (number != 0) {}
        selectedIndex = selectedIndex! + 1;
      } else {
        selectedIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome Number"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: ,
              //child: Text('$List<int>paliList[selectedIndex!]'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showNextNumber,
              child: const Text("Next1"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
