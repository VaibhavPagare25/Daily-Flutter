import 'package:flutter/material.dart';
import 'package:inherited_widget/ephemeral_state.dart';
import 'package:inherited_widget/implementation.dart';
import 'package:inherited_widget/inherited_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedData(
      data: 50,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Implementation(),
      ),
    );
  }
}
