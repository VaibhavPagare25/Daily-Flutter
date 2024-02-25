// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'lists.dart';

class WLifecycle2 extends StatefulWidget {
  const WLifecycle2({super.key});

  @override
  State<WLifecycle2> createState() {
    print("In create state");
    return _WLifecycleState2();
  }
}

class _WLifecycleState2 extends State<WLifecycle2> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    print("In init state");
  }

  @override
  Widget build(BuildContext context) {
    print("In  build");

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WidgetLifecycle",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurple.shade300,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              screenCount++;
            });
          },
          child: const Text("Next page"),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant WLifecycle2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("In didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("In deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("In dispose");
  }
}

class NextPage2 extends StatefulWidget {
  const NextPage2({super.key});

  @override
  State<NextPage2> createState() => _NextPageState2();
}

class _NextPageState2 extends State<NextPage2> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    print("In init state2");
  }

  @override
  Widget build(BuildContext context) {
    print("In build2");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Another Page'),
      ),
      body: Center(
        child: const Text("In nextPage2"),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In didChangeDependencies2");
  }

  @override
  void didUpdateWidget(covariant NextPage2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("In didUpdateWidget2");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("In deactivate2");
  }

  @override
  void dispose() {
    super.dispose();
    print("In dispose2");
  }
}
