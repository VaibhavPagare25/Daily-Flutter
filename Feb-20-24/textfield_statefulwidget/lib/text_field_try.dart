// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class TextFieldTry extends StatefulWidget {
  const TextFieldTry({super.key});

  @override
  State<TextFieldTry> createState() => _TextFieldTryState();
}

class _TextFieldTryState extends State<TextFieldTry> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dCController = TextEditingController();
  TextEditingController locController = TextEditingController();

  String? name;
  String? dreamComp;
  String? loc;

  bool buttonPressed = false;
  @override
  void initState() {
    super.initState();
    nameController.addListener(nameControllerMethod);
  }

  void nameControllerMethod() {
    print("In name controlller: ${nameController.text}");
  }

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
      body: ListView(
        children: [
          Column(
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
                    });
                  },
                  child: const Text("Enter"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              (buttonPressed &&
                      (nameController.text.isEmpty ||
                          locController.text.isEmpty ||
                          dCController.text.isEmpty))
                  ? const Text(
                      "Enter valid details",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  : Container(),
              (buttonPressed &&
                      (nameController.text.isNotEmpty &&
                          dCController.text.isNotEmpty &&
                          locController.text.isNotEmpty))
                  ? Container(
                      height: 350,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.amber.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              top: 30,
                              bottom: 20,
                            ),
                            child: Text(
                              "Name : $name",
                              style: TextStyle(
                                color: Colors.deepPurple.shade400,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              bottom: 20,
                            ),
                            child: Text(
                              "DreamCompany : $dreamComp",
                              style: TextStyle(
                                color: Colors.deepPurple.shade400,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              bottom: 20,
                            ),
                            child: Text(
                              "Location : $loc",
                              style: TextStyle(
                                color: Colors.deepPurple.shade400,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
