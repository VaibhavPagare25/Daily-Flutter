import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/user_provider.dart';

class Challenge extends StatefulWidget {
  const Challenge({super.key});

  @override
  State<Challenge> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Challenge"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Text(
          context.watch<UserProvider>().counter.toString(),
          style: const TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<UserProvider>().incrementCounter();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<UserProvider>().decrementCounter();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
