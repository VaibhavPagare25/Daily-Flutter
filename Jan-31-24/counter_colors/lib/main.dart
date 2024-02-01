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
      home: ColorChange(),
    );
  }
}

class ColorChange extends StatefulWidget {
  const ColorChange({super.key});

  @override
  State<ColorChange> createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  int box1Counter = 0;
  int box2Counter = 0;

  void incrementBox1() {
    setState(() {
      if (box1Counter < 3) {
        //print(box1Counter);
        box1Counter++;
        // print("in box1 increment");
      } else {
        box1Counter = 1;
        // print("In box1Else increment");
      }
    });
  }

  void incrementBox2() {
    setState(() {
      if (box2Counter < 3) {
        box2Counter++;
      } else {
        box2Counter = 1;
      }
    });
  }

  Color setBox1Color() {
    if (box1Counter == 0) {
      // print("In Box1 setcolor =0");
      return Colors.grey;
    } else if (box1Counter == 1) {
      //print("In Box1 setcolor =1");
      return Colors.red;
    } else if (box1Counter == 2) {
      // print("In Box1 setcolor =2");
      return Colors.green;
    } else {
      // print("In Box1 setcolor else");
      return Colors.blue;
    }
  }

  Color setBox2Color() {
    if (box2Counter == 0) {
      return Colors.yellow;
    } else if (box2Counter == 1) {
      return Colors.red;
    } else if (box2Counter == 2) {
      return Colors.green;
    } else {
      return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext ctext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ColorChange"),
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: setBox1Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: incrementBox1,
                child: const Text("Button 1"),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: setBox2Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: incrementBox2,
                child: const Text("Button 2"),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            box1Counter = 0;
            box2Counter = 0;
          });
        },
        child: const Icon(Icons.restore_page),
      ),
    );
  }
}
