import 'dart:developer';

import 'package:api_binding/api_demo.dart';
import 'package:api_binding/dummy.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
  // var myData = secondMap();
  // print(myData['data']);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiDemo(),
    );
  }
}

class ApiBindingDemo extends StatefulWidget {
  const ApiBindingDemo({super.key});

  @override
  State createState() => _ApiBindingDemoState();
}

class _ApiBindingDemoState extends State {
  List<dynamic> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API BINDING DEMO"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text("Hello"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getData,
        child: const Icon(Icons.add),
      ),
    );
  }

  void getData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");

    http.Response response = await http.get(url);
    log(response.body);

    // print("In print1: ${response.body}");

    var jsonData = json.decode(response.body);

    //log(jsonData['status']);
    //log(jsonData['data'][0]['employee_name']);

    print("In print2: ${jsonData['data']}");
    log(response.body);
    // log(jsonData['data']);

    //var list = await jsonData['data'];
    // print(list);
    // log(list);
    // for (var item in jsonData['data']) {
    //   log(item['employee_name']);
    // }

    setState(() {
      list = jsonData['data'];
    });
  }
}
