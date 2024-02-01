import 'package:flutter/material.dart';

class StatefulTiranga extends StatefulWidget {
  const StatefulTiranga({super.key});

  @override
  State<StatefulTiranga> createState() => _StatefulTirangaState();
}

class _StatefulTirangaState extends State<StatefulTiranga> {
  int counter = -1;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulTiranga'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.amberAccent, Colors.white30, Colors.yellowAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (counter >= 0)
                ? Container(
                    margin: const EdgeInsets.only(top: 50, right: 5),
                    height: 580,
                    width: 10,
                    color: Colors.brown,
                  )
                : Container(),
            Column(
              children: [
                (counter >= 1)
                    ? Container(
                        margin: const EdgeInsets.only(top: 50),
                        height: 80,
                        width: 350,
                        color: Colors.orange,
                      )
                    : Container(),
                (counter >= 2)
                    ? Container(
                        height: 80,
                        width: 350,
                        color: Colors.white,
                        child: (counter >= 3)
                            ? Image.asset(
                                'assets/images/charkra.png',
                                height: 80,
                              )
                            : Container(),
                      )
                    : Container(),
                (counter >= 4)
                    ? Container(
                        height: 80,
                        width: 350,
                        color: Colors.green,
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: incrementCounter,
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = -1;
              });
            },
            child: const Icon(Icons.restore_page),
          )
        ],
      ),
    );
  }
}
