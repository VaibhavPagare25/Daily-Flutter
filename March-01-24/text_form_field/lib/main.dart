import 'package:flutter/material.dart';
import 'package:text_form_field/text_form_field.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FormDemo(),
    );
  }
}
