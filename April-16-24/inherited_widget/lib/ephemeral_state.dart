// import 'package:flutter/material.dart';

// class EphemeralTrial extends StatefulWidget {
//   const EphemeralTrial({super.key});

//   @override
//   State createState() => _EphemeralTrialState();
// }

// class _EphemeralTrialState extends State<EphemeralTrial> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "EphemeralTrial",
//         ),
//         backgroundColor: Colors.deepPurple.shade300,
//         foregroundColor: Colors.white,
//       ),
//       body: const Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Development(title: "Java"),
//           SizedBox(height: 20),
//           Development(title: "Flutter"),
//         ],
//       ),
//     );
//   }
// }

// class Development extends StatefulWidget {
//   final String title;
//   const Development({super.key, required this.title});

//   @override
//   State<Development> createState() => _DevelopmentState();
// }

// class _DevelopmentState extends State<Development> {
//   int referenceCounter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         GestureDetector(
//           onTap: () {
//             setState(() {
//               referenceCounter++;
//             });
//           },
//           child: Container(
//             height: 100,
//             width: 200,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.blue,
//             ),
//             child: Text(
//               widget.title,
//             ),
//           ),
//         ),
//         const SizedBox(
//           width: 20,
//         ),
//         Container(
//           height: 50,
//           width: 50,
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.blue.shade200,
//           ),
//           child: Text(
//             "$referenceCounter",
//           ),
//         ),
//       ],
//     );
//   }
// }
