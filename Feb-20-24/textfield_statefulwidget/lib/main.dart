import 'package:flutter/material.dart';
import 'package:textfield_statefulwidget/text_field_try.dart';
import 'package:textfield_statefulwidget/widget_lifecycle.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextFieldTry(),
    );
  }
}
