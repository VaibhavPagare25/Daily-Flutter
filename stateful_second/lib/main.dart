import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment2(),
    );
  }
}

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool box1Color = true;
  bool box2Color = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color.Box"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Box1
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box1Color ? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //BoxButton1
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box1Color = true;
                      });
                    },
                    child: const Text("Color Box1"),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              //Box2
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box2Color ? Colors.blue : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //box2Button
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box2Color = true;
                      });
                    },
                    child: const Text("Color Box2"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
