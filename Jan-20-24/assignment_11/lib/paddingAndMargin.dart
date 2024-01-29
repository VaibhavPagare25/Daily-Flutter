import 'package:flutter/material.dart';

class PaddingAndMargin extends StatelessWidget {
  const PaddingAndMargin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Padding & Margin",
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            child: Image.network(
                'https://static-cse.canva.com/blob/825910/ComposeStunningImages6.jpg'),
          ),
        ),
      ),
    );
  }
}
