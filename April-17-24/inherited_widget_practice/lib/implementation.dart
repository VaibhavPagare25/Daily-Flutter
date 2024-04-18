import 'package:flutter/material.dart';
import 'package:inherited_widget_practice/inherited_widget.dart';

class Implementation extends StatefulWidget {
  const Implementation({super.key});

  @override
  State<Implementation> createState() => _ImplementationState();
}

class _ImplementationState extends State<Implementation> {
  @override
  Widget build(BuildContext context) {
    SharedData provider = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Practice",
        ),
        backgroundColor: Colors.blue.shade400,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${provider.data}"),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Screen1(),
                ),
              );
            },
            child: const Text("Button"),
          ),
        ],
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    SharedData provider = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Screen1",
        ),
        backgroundColor: Colors.blue.shade400,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${provider.data}"),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Button1"),
          ),
        ],
      ),
    );
  }
}
