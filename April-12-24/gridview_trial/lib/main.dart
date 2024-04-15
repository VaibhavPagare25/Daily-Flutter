import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewTrial(),
    );
  }
}

class GridViewTrial extends StatefulWidget {
  const GridViewTrial({super.key});

  @override
  State<GridViewTrial> createState() => GridViewTrialState();
}

class GridViewTrialState extends State<GridViewTrial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GridViewTrial",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        padding: const EdgeInsets.all(0.8),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text("${index + 1}"),
          );
        },
      ),
    );
  }
}
