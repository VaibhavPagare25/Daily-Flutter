// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class TextFieldCard extends StatefulWidget {
  const TextFieldCard({super.key});

  @override
  State<TextFieldCard> createState() => _TextFieldCardState();
}

class _TextFieldCardState extends State<TextFieldCard> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dCController = TextEditingController();
  final TextEditingController locController = TextEditingController();

  String name = "";
  String dreamComp = "";
  String loc = "";
  List<Map> cardData = [];

  bool buttonPressed = false;
  @override
  // void initState() {
  //   super.initState();
  //   nameController.addListener(nameControllerMethod);
  // }

  // void nameControllerMethod() {
  //   print("In name controlller: ${nameController.text}");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TextEditingController",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade300,
      ),
      body: ListView.builder(
        itemCount: cardData.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 800,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                  width: 500,
                ),
                SizedBox(
                  width: 350,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        color: Colors.indigo.shade800,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        // borderSide: const BorderSide(
                        //   color: Colors.purple,
                        // ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.indigo.shade800,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 350,
                  child: TextField(
                    controller: dCController,
                    decoration: InputDecoration(
                      labelText: "DreamCompany",
                      labelStyle: TextStyle(
                        color: Colors.indigo.shade800,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.indigo.shade800,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.indigo.shade800,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 350,
                  child: TextField(
                    controller: locController,
                    decoration: InputDecoration(
                      labelText: "Location",
                      labelStyle: TextStyle(
                        color: Colors.indigo.shade800,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.indigo.shade800,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.indigo.shade800,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.shade400,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        buttonPressed = true;
                        name = nameController.text;
                        dreamComp = dCController.text;
                        loc = locController.text;
                        cardData[index][{
                          "name": name,
                          "dreamComp": dreamComp,
                          "loc": loc
                        }];
                      });
                    },
                    child: const Text("Enter"),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                (cardData.isNotEmpty)
                    ? SizedBox(
                        height: 300,
                        child: Column(
                          children: [
                            Text(cardData[index][name]),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(cardData[index][dreamComp]),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(cardData[index][loc]),
                          ],
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          );
        },
      ),
    );
  }
}
