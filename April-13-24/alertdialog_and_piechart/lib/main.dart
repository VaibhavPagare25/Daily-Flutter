import 'package:alertdialog_and_piechart/pie_chart.dart';
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
      home: PieChartDemo(),
    );
  }
}

class AlertDialogTrial extends StatefulWidget {
  const AlertDialogTrial({super.key});

  @override
  State<AlertDialogTrial> createState() => _AlertDialogTrialState();
}

class _AlertDialogTrialState extends State<AlertDialogTrial> {
  Future<Widget> showMyDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Delete Conformation",
            ),
            content:
                const Text("Are you sure you want to delete this category?"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Delete"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AlertDialog",
        ),
      ),
      body: const Center(
        child: Text(
          "What's up Buddy!!!",
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await showMyDialog();
          },
          child: const Icon(Icons.dialpad_outlined)),
    );
  }
}
