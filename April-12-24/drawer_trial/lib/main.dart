import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// void main() {
//   runApp(
//     const MainApp(),
//   );
// }

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerTrial(),
    );
  }
}

class DrawerTrial extends StatefulWidget {
  const DrawerTrial({super.key});

  @override
  State<DrawerTrial> createState() => DrawerTrialState();
}

class DrawerTrialState extends State<DrawerTrial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Drawer Trial",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.deepPurple.shade400,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text("Hey Buddy!!!"),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text("This is drawer"),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.done_all),
            ),
          ],
        ),
      ),
      drawerDragStartBehavior: DragStartBehavior.start,
      drawerEnableOpenDragGesture: true,
      drawerEdgeDragWidth: 500,
      drawerScrimColor: Colors.red,
    );
  }
}
