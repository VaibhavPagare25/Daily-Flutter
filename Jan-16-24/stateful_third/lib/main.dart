import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment7(),
    );
  }
}

class Assignment7 extends StatefulWidget {
  const Assignment7({super.key});

  @override
  State<Assignment7> createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7> {
  int? selectedIndex = 0;
  final List<int> numberList = [5665, 2345, 3455, 2332, 5678];

  int isPalindrome(int number) {
    int result = number;
    int y = 0;
    int count = 0;
    while (number != 0) {
      int rem = number % 10;
      y = y * 10 + rem;
      number = number ~/ 10;
    }
    if (result == y) {
      return count;
    }
    return 0;
  }

  void showNextNumber() {
    setState(() {
      if (selectedIndex! < numberList.length - 1) {
        selectedIndex = selectedIndex! + 1;
      } else {
        selectedIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //int count = 0;
    int currentNumber = numberList[selectedIndex!];
    int palindromeCheck = isPalindrome(currentNumber);
    int count = palindromeCheck;
    count = count + 1;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 158, 231, 196),
      appBar: AppBar(
        title: const Text("Palindrome Check"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Current Number: $currentNumber",
              style: const TextStyle(fontSize: 25),
              selectionColor: Colors.redAccent,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Palindrome: $palindromeCheck",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showNextNumber,
              child: const Text("Next"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
