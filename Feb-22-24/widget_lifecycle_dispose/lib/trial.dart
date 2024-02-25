// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class WidgetLifeCycle extends StatefulWidget {
  const WidgetLifeCycle({super.key});

  @override
  State<WidgetLifeCycle> createState() {
    print("in createState WidgetLifeCycle");
    return _WidgetLifeCycleState();
  }
}

class _WidgetLifeCycleState extends State<WidgetLifeCycle> {
  bool screen = false;
  @override
  Widget build(BuildContext context) {
    print("in build WidgetLifeCycle");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget LifeCycle"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (screen)
                    ? const Text("In Second Class")
                    : const Text("In First Class"),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      screen = !screen;
                      print("In setState WidgetLifeCycle");
                    });
                  },
                  child: const Icon(Icons.add),
                )
              ],
            ),
          ),
          SizedBox(
            height: 350,
            width: double.infinity,
            child: (screen) ? const SecondClass() : const FirstClass(),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print("In init state WidgetLifeCycle Class");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In didChangeDependencies WidgetLifeCycle Class");
  }

  @override
  void didUpdateWidget(covariant WidgetLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("In didUpdateWidget WidgetLifeCycle Class");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("In deactivate WidgetLifeCycle Class");
  }

  @override
  void dispose() {
    super.dispose();
    print("In Dispose WidgetLifeCycle Class");
  }
}

class FirstClass extends StatefulWidget {
  const FirstClass({super.key});

  @override
  State<FirstClass> createState() {
    print("in createState First Class");
    return _FirstClassState();
  }
}

class _FirstClassState extends State<FirstClass> {
  @override
  Widget build(BuildContext context) {
    print("in build First Class");
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Classs"),
      ),
      body: const Center(
        child: Text("In first class"),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print("In init state first Class");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In didChangeDependencies first Class");
  }

  @override
  void didUpdateWidget(covariant FirstClass oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("In didUpdateWidget first Class");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("In deactivate first Class");
  }

  @override
  void dispose() {
    super.dispose();
    print("In Dispose first Class");
  }
}

class SecondClass extends StatefulWidget {
  const SecondClass({super.key});

  @override
  State<SecondClass> createState() {
    print("in createState Second Class");
    return _SecondClassState();
  }
}

class _SecondClassState extends State<SecondClass> {
  @override
  Widget build(BuildContext context) {
    print("in build Second Class");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Classss"),
      ),
      body: const Center(
        child: Text("In Second class"),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print("In init state Second Class");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In didChangeDependencies Second Class");
  }

  @override
  void didUpdateWidget(covariant SecondClass oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("In didUpdateWidget Second Class");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("In deactivate Second Class");
  }

  @override
  void dispose() {
    super.dispose();
    print("In Dispose Second Class");
  }
}
