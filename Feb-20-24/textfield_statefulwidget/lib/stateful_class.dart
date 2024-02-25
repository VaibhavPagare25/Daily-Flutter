import 'package:flutter/material.dart';

class StatefulClass extends StatefulWidget {
  const StatefulClass({super.key});

  @override
  State<StatefulClass> createState() => _StatefulClassState();
}

class _StatefulClassState extends State<StatefulClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StatefulClass"),
      ),
      body: Center(
        child: const Text("Hello"),
      ),
    );
  }
}
