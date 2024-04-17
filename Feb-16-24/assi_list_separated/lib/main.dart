import 'package:assi_list_separated/cric_separate.dart';
import 'package:assi_list_separated/listseparate.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "List Separated Assignment",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.deepPurple.shade300,
          centerTitle: true,
        ),
        body: const ListSeparate(),
      ),
    );
  }
}

// class ListSeparatorDemo extends StatefulWidget {
//   const ListSeparatorDemo({super.key});

//   @override
//   State<ListSeparatorDemo> createState() => _ListSeparatorDemoState();
// }

// class _ListSeparatorDemoState extends State<ListSeparatorDemo> {
//   Map<String, dynamic> images = {
//     "test" : ["assets/images/ishan.jpg","assets/images/klrahul.jpg","assets/images/shubhman.jpg"],
//     "t20" : ["assets/images/ruturaj.jpg","assets/images/surya.jpg","assets/images/yashasvi.jpg"],
//   };
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       itemCount: images.length,
//       separatorBuilder: (BuildContext context, int index) {
        
//       },
//       itemBuilder: (BuildContext context, int index) {
//         return SizedBox(
//           height : 700,
//           child : Column(
//             children : [
//               Image.asset(images["test"][index]),
//             ]
//           ),
//         );
//       },
//     );
//   }
// }
