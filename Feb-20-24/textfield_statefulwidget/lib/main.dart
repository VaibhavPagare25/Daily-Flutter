import 'package:flutter/material.dart';
import 'package:textfield_statefulwidget/assignment3.dart';
import 'package:textfield_statefulwidget/dreamcompany.dart';
import 'package:textfield_statefulwidget/newone.dart';
import 'package:textfield_statefulwidget/text_field_try.dart';
import 'package:textfield_statefulwidget/widget_lifecycle.dart';
import 'lists.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyWidget(),
//       //  Scaffold(
//       //     appBar: AppBar(
//       //       title: const Text("In main"),
//       //     ),
//       //     body: (screenCount == 2) ? TextFieldTry() : WLifecycle2(),
//       //   ),
//       // );
//     );
//   }
// }
void main() {
  runApp(const DisposableApp());
  // await Future.delayed(
  //     Duration(seconds: 5)); // Wait for 5 seconds to observe the effect
  runApp(SizedBox.shrink()); // Remove the widget from the tree
}

class DisposableApp extends StatelessWidget {
  const DisposableApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DisposableWidget(),
    );
  }
}

class DisposableWidget extends StatefulWidget {
  const DisposableWidget({Key? key}) : super(key: key);

  @override
  _DisposableWidgetState createState() => _DisposableWidgetState();
}

class _DisposableWidgetState extends State<DisposableWidget> {
  bool showMessage = false;

  @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(milliseconds: 1000), () {
  //     setState(() {
  //       showMessage = true;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text("disposing"),
      ),
    );
  }

  @override
  void dispose() {
    print('Disposing...');
    super.dispose();
  }
}
