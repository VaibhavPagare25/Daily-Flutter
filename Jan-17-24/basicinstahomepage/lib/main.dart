import 'package:flutter/material.dart';

import 'newone.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment4(),
    );
  }
}

// class Assignment4 extends StatefulWidget {
//   const Assignment4({super.key});

//   @override
//   State<Assignment4> createState() => _Assignment4State();
// }

// class _Assignment4State extends State<Assignment4> {
//   bool like1 = false;
//   bool like2 = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: const Text(
//           "Instagram",
//           style: TextStyle(
//             fontStyle: FontStyle.italic,
//             color: Colors.black,
//             fontSize: 30,
//           ),
//         ),
//         actions: const [
//           Icon(
//             Icons.favorite_rounded,
//             color: Colors.red,
//           )
//         ],
//       ),
//       body: ListView(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 //color: Colors.redAccent,
//                 child: Image.network(
//                   'https://live.staticflickr.com/65535/53467254604_f262da4c62_z.jpg',
//                   width: double.infinity,
//                   height: 200,

//                   // height: double.infinity,
//                 ),
//               ),
//               Row(children: [
//                 IconButton(
//                   onPressed: () {
//                     setState(() {
//                       like1 = !like1;
//                     });
//                   },
//                   icon: Icon(
//                     like1
//                         ? Icons.favorite_rounded
//                         : Icons.favorite_outline_outlined,
//                     color: like1 ? Colors.red : Colors.black,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.comment_outlined,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.send,
//                   ),
//                 ),
//                 const Spacer(),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.bookmark_add_outlined,
//                   ),
//                 ),
//               ])
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 //color: Colors.purpleAccent,
//                 child: Image.network(
//                   'https://live.staticflickr.com/65535/53464614187_b6bbd1bbd9.jpg',
//                   width: double.infinity,
//                   height: 200,

//                   // height: double.infinity,
//                 ),
//               ),
//               Row(children: [
//                 IconButton(
//                   onPressed: () {
//                     setState(() {
//                       like1 = !like1;
//                     });
//                   },
//                   icon: Icon(
//                     like1
//                         ? Icons.favorite_rounded
//                         : Icons.favorite_outline_outlined,
//                     color: like1 ? Colors.red : Colors.black,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.comment_outlined,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.send,
//                   ),
//                 ),
//                 const Spacer(),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.bookmark_add_outlined,
//                   ),
//                 ),
//               ])
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 //color: Colors.purpleAccent,
//                 child: Image.network(
//                   'https://live.staticflickr.com/65535/53463506942_e1bc4c7882.jpg',
//                   width: double.infinity,
//                   height: 200,

//                   // height: double.infinity,
//                 ),
//               ),
//               Row(children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.favorite_outline_outlined),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.comment_outlined,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.send,
//                   ),
//                 ),
//                 // const SizedBox(
//                 //   width: 660,
//                 // ),
//                 const Spacer(),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.bookmark_add_outlined,
//                   ),
//                 ),
//               ])
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 //color: Colors.redAccent,
//                 child: Image.network(
//                   'https://live.staticflickr.com/65535/53467254604_f262da4c62_z.jpg',
//                   width: double.infinity,
//                   height: 200,

//                   // height: double.infinity,
//                 ),
//               ),
//               Row(children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.favorite_outline_outlined),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.comment_outlined,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.send,
//                   ),
//                 ),
//                 const Spacer(),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.bookmark_add_outlined,
//                   ),
//                 ),
//               ])
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 //color: Colors.purpleAccent,
//                 child: Image.network(
//                   'https://live.staticflickr.com/65535/53464614187_b6bbd1bbd9.jpg',
//                   width: double.infinity,
//                   height: 200,

//                   // height: double.infinity,
//                 ),
//               ),
//               Row(children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.favorite_outline_outlined),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.comment_outlined,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.send,
//                   ),
//                 ),
//                 const Spacer(),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.bookmark_add_outlined,
//                   ),
//                 ),
//               ])
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 //color: Colors.purpleAccent,
//                 child: Image.network(
//                   'https://live.staticflickr.com/65535/53463506942_e1bc4c7882.jpg',
//                   width: double.infinity,
//                   height: 200,

//                   // height: double.infinity,
//                 ),
//               ),
//               Row(children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.favorite_outline_outlined),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.comment_outlined,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.send,
//                   ),
//                 ),
//                 // const SizedBox(
//                 //   width: 660,
//                 // ),
//                 const Spacer(),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.bookmark_add_outlined,
//                   ),
//                 ),
//               ])
//             ],
//           ),
//         ],
//       ),
//       // body: SingleChildScrollView(
//       //   child: Column(
//       //     children: [
//       //       Column(
//       //         mainAxisAlignment: MainAxisAlignment.start,
//       //         crossAxisAlignment: CrossAxisAlignment.start,
//       //         children: [
//       //           Container(
//       //             //color: Colors.redAccent,
//       //             child: Image.network(
//       //               'https://live.staticflickr.com/65535/53467254604_f262da4c62_z.jpg',
//       //               width: double.infinity,
//       //               height: 200,

//       //               // height: double.infinity,
//       //             ),
//       //           ),
//       //           Row(children: [
//       //             IconButton(
//       //               onPressed: () {},
//       //               icon: const Icon(
//       //                 Icons.comment_outlined,
//       //               ),
//       //             ),
//       //             IconButton(
//       //               onPressed: () {},
//       //               icon: const Icon(
//       //                 Icons.send,
//       //               ),
//       //             )
//       //           ])
//       //         ],
//       //       ),
//       //       Column(
//       //         mainAxisAlignment: MainAxisAlignment.start,
//       //         crossAxisAlignment: CrossAxisAlignment.start,
//       //         children: [
//       //           Container(
//       //             //color: Colors.purpleAccent,
//       //             child: Image.network(
//       //               'https://live.staticflickr.com/65535/53464614187_b6bbd1bbd9.jpg',
//       //               width: double.infinity,
//       //               height: 200,

//       //               // height: double.infinity,
//       //             ),
//       //           ),
//       //           Row(children: [
//       //             IconButton(
//       //               onPressed: () {},
//       //               icon: const Icon(
//       //                 Icons.comment_outlined,
//       //               ),
//       //             ),
//       //             IconButton(
//       //               onPressed: () {},
//       //               icon: const Icon(
//       //                 Icons.send,
//       //               ),
//       //             )
//       //           ])
//       //         ],
//       //       ),
//       //       Column(
//       //         mainAxisAlignment: MainAxisAlignment.start,
//       //         crossAxisAlignment: CrossAxisAlignment.start,
//       //         children: [
//       //           Container(
//       //             color: Colors.purpleAccent,
//       //             child: Image.network(
//       //               'https://live.staticflickr.com/8068/8282428996_d13d8ab827_z.jpg',
//       //               width: double.infinity,
//       //               height: 200,

//       //               // height: double.infinity,
//       //             ),
//       //           ),
//       //           Row(children: [
//       //             IconButton(
//       //               onPressed: () {},
//       //               icon: const Icon(
//       //                 Icons.comment_outlined,
//       //               ),
//       //             ),
//       //             IconButton(
//       //               onPressed: () {},
//       //               icon: const Icon(
//       //                 Icons.send,
//       //               ),
//       //             )
//       //           ])
//       //         ],
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }
