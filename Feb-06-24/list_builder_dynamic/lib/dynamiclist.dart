import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({super.key});

  @override
  State<DynamicList> createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  int counter = 0;
  List dynamicList = List.empty(growable: true);
  List imageList = [
    "assets/images/12fail.jpg",
    "assets/images/avengers.jpg",
    "assets/images/cars2.jpg",
    "assets/images/frozen.jpg",
    "assets/images/hanuman.jpg",
    "assets/images/loki.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic List"),
      ),
      body: ListView.builder(
        itemCount: dynamicList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            child: Image.asset("${dynamicList[index]}"),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (counter < 7) {
                  dynamicList.add(imageList[counter]);
                  counter++;
                }
              });
            },
            child: Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (counter > 1) {
                  dynamicList.remove(dynamicList[counter]);
                  counter--;
                }
              });
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
