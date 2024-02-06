import 'package:flutter/material.dart';
import 'package:number_to_words_english/number_to_words_english.dart';

class ListCount extends StatefulWidget {
  const ListCount({super.key});

  @override
  State<ListCount> createState() => _ListCountState();
}

class _ListCountState extends State<ListCount> {
  var arrCount = [];
  int counter = 1;
  List<String> numbersAsWords = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 100; i++) {
      numbersAsWords.add(NumberToWordsEnglish.convert(i));
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List Counter",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.deepPurple.shade400,
      ),
      body: ListView.builder(
        itemCount: arrCount.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.center,
                //width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "${arrCount[index]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Text(
                numbersAsWords[index],
                style: const TextStyle(fontSize: 20),
              ),
            ],
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (counter <= 100) {
                  arrCount.add(counter++);
                }
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (counter > 1) {
                  arrCount.remove(--counter);
                }
              });
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
