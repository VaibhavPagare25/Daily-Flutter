// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink(
      child: WLifecycle(),
    );
  }
}

class WLifecycle extends StatefulWidget {
  const WLifecycle({super.key});

  @override
  State<WLifecycle> createState() {
    print("In create state");
    return _WLifecycleState();
  }
}

class _WLifecycleState extends State<WLifecycle> {
  String message = 'Hello, Widget Lifecycle!';
  int count = 0;
  @override
  void initState() {
    super.initState();
    print("In init state");
  }

  @override
  Widget build(BuildContext context) {
    print("In  build");
    return (count == 0)
        ? Scaffold(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(message),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        message = 'Updated Message!';
                        print("In setState");
                      });
                    },
                    child: const Text('Update Message'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text("NextPage"),
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: const Text('SecondScaffold'),
            ),
            body: Center(
              child: Column(
                children: [
                  const Text('This is Second Scaffold!'),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print("in setState previous");
                      });
                    },
                    child: const Text("Previous"),
                  ),
                ],
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
  void didUpdateWidget(covariant WLifecycle oldWidget) {
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

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
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
      body: const Center(
        child: Text('This is another page!'),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In didChangeDependencies2");
  }

  @override
  void didUpdateWidget(covariant NextPage oldWidget) {
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
