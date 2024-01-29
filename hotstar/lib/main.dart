import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hotstar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hotstar extends StatefulWidget {
  const Hotstar({super.key});
  @override
  State<Hotstar> createState() => _HotstarState();
}

class _HotstarState extends State<Hotstar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Disney+ hotstar",
          selectionColor: Colors.black,
        ),
        //backgroundColor: Colors.black87,
      ),
      body: Container(child: Image.asset("assets/images/cars2.jpg")),
      // children: [
      //     Column(
      //       children: [
      //         SingleChildScrollView(
      //           scrollDirection: Axis.horizontal,
      //           child: Container(
      //             child: Image.asset(
      //               "JunngleBook1.jpg",
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
    );
  }
}
