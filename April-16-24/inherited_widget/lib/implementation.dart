import 'package:flutter/material.dart';
import 'package:inherited_widget/inherited_widget.dart';

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
          "Implementation Of Inherited Widget",
        ),
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${provider.data}",
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Screen2(),
                ),
              );
            },
            child: const Text("Next Page"),
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    SharedData provider = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Screen2",
        ),
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${provider.data}",
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Button",
            ),
          )
        ],
      ),
    );
  }
}
