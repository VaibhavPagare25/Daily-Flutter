import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiDemo extends StatefulWidget {
  const ApiDemo({super.key});

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  List<dynamic> list = [];
  Map<String, dynamic> oneEmpData = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Api Demo",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: oneEmpData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              //for every empmployee in the json file
              // Text(list[index]['employee_name']),
              // Text(list[index]['employee_salary'].toString()),
              // const SizedBox(
              //   height: 10,
              // ),

              //for only one employee in json file
              //There are total fields in the json data so thats why it will print the output five times
              Text(oneEmpData['employee_name']),
              Text(oneEmpData['employee_salary'].toString()),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getJsonData,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }

  void getJsonData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employee/1");

    http.Response response = await http.get(url);

    log(response.body);

    var responseData = json.decode(response.body);
    //for every employee in jason file which is List<dynamic> type
    //https://dummy.restapiexample.com/api/v1/employees this is for every employee in the json file
    // setState(() {
    //   list = responseData['data'];
    // });

    //This is for only one employee in the jason file which is Map<String,dynamic> type
    setState(() {
      oneEmpData = responseData['data'];
    });
  }
}
