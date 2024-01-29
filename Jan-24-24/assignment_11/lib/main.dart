import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: const Text(
            "Assignment No. 11",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.orange,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: const Text("Buttton 1"),
                  // ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: const Text("Buttton 1"),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: const Text("Buttton 2"),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: const Text("Buttton 3"),
              //     ),
              //   ],
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: const Text("Buttton 1"),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: const Text("Buttton 2"),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: const Text("Buttton 3"),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
