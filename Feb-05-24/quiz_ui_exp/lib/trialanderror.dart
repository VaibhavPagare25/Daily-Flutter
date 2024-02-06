import 'package:flutter/material.dart';

class TrialColumn extends StatelessWidget {
  const TrialColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TrialAndError",
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            child: const Text("what is your name"),
          ),
          // Container(
          //   color: Colors.amber,
          //   child: const Row(
          //     children: [
          //       Text(
          //         "What?",
          //       )
          //     ],
          //   ),
          // ),
          // Container(
          //   color: Colors.red,
          //   height: 100,
          //   //width: 100,
          // ),
          ///Container(height: 50, color: Colors.brown),
          // // Container(
          // //   color: Colors.red,
          // //   child: Column(
          // //     children: [
          // //       Container(
          // //         // height: 100,
          // //         // width: 100,
          // //         // color: Colors.green,
          // //         child: const Text("What?"),
          // //       ),
          // //     ],
          // //   ),
          // // ),
          // const Text("what"),
          // Image.asset(
          //   'assets/images/backround.jpg',
          //   fit: BoxFit.cover,
          // )
          // // Column(
          // //   children: [
          // //     Container(
          // //       height: 100,
          // //       width: 100,
          // //       color: Colors.red,
          // //     ),
          // //   ],
          // // ),
        ],
      ),
    );
  }
}
