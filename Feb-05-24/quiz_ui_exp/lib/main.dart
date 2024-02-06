import 'package:flutter/material.dart';
import 'trialanderror.dart';
import 'trialrow';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TrialColumn(),
      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text("one"),
      //   ),
      //   body: Stack(
      //     children: [
      //       Positioned.fill(
      //         child: Image.asset(
      //           'assets/images/backround.jpg',
      //           fit: BoxFit.fill,
      //         ),
      //       ),
      //     ],
      //   ),

      // ),
      // };
    );
  }
}

// class QuizUI extends StatefulWidget {
//   const QuizUI({super.key});

//   @override
//   State createState() => _QuizUIState();
// }

// class _QuizUIState extends State {
//   int counter = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("QuizUI"),
//         centerTitle: true,
//         backgroundColor: Colors.purpleAccent,
//         foregroundColor: Colors.white,
//       ),
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Question:",
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 "$counter/10",
//                 style: const TextStyle(
//                   fontSize: 20,
//                 ),
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Container(
//             height: 20,
//             width: 900,
//             color: Colors.red,
//             child: const Text(
//               "1.Who is your favourite player",
//               style: TextStyle(
//                 fontSize: 15,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
