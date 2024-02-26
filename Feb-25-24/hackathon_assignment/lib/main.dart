import 'package:flutter/material.dart';
import 'package:hackathon_assignment/bottomsheet.dart';
import 'package:hackathon_assignment/containerr.dart';
import 'package:hackathon_assignment/mainapp.dart';
import 'package:hackathon_assignment/todo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}
