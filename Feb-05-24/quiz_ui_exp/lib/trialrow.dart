import 'package:flutter/material.dart';

class TrialRow extends StatelessWidget {
  const TrialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TrialAndError",
        ),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          const Text("What is your name"),
          Container(
            color: Colors.amber,
            child: const Column(
              children: [
                Text(
                  "Who?",
                )
              ],
            ),
          ),
          // Container(
          //   color: Colors.blue,
          //   //height: 100,
          //   width: 100,
          // ),
          // Container(
          //   color: Colors.red,
          //   child: Row(
          //     children: [
          //       Container(
          //         // height: 100,
          //         // width: 100,
          //         // color: Colors.green,
          //         child: const Text("What?"),
          //       ),
          //     ],
          //   ),
          // ),
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
