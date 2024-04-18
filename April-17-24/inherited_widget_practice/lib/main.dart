import 'package:flutter/material.dart';
import 'package:inherited_widget_practice/implementation.dart';
import 'package:inherited_widget_practice/inherited_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedData(
      data: 80,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Implementation(),
      ),
    );
  }
}
