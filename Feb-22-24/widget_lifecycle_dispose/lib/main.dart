import 'package:flutter/material.dart';
import 'package:widget_lifecycle_dispose/trial.dart';

void main() {
  runApp(const MainApp());
  // runApp(SizedBox.shrink());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetLifeCycle(),
    );
  }
}

// class DisposeWidget extends StatefulWidget {
//   const DisposeWidget({super.key});

//   @override
//   State createState() => _DisposeWidgetState();
// }

// class _DisposeWidgetState extends State {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: const Text("In DisposeWidgetState class"),
//       ),
//     );
//   }

//   void initState() {
//     super.initState();
//     print("In init state");
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     print("In didChangeDependencies");
//   }

//   @override
//   void didUpdateWidget(covariant DisposeWidget oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     print("In didUpdateWidget");
//   }

//   @override
//   void deactivate() {
//     super.deactivate();
//     print("In deactivate");
//   }

//   void dispose() {
//     super.dispose();
//     print("In Dispose");
//   }
// }
