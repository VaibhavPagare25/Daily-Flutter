import 'package:flutter/material.dart';
import 'package:list_builder_dynamic/dynamiclist.dart';
import 'package:list_builder_dynamic/intro_page.dart';
import 'package:list_builder_dynamic/listbuilder.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
