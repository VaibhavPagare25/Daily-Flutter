import 'dart:convert';
import 'dart:developer';

import 'package:api_binding_model/controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State createState() => _EmployeeState();
}

class _EmployeeState extends State {
  List<Data> empData = [];
  @override
  Widget build(BuildContext context) {
    if (empData.isNotEmpty) {
      print(empData[1].employeeName);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employeeeee"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        // For all data in the json file.
        itemCount: empData.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(empData[index].employeeName!),
                Text(empData[index].employeeSalary!.toString()),
                Text(empData[index].employeeAge!.toString()),
              ],
            ),
          );
        },
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

    var jsonData = json.decode(response.body);
    EmployeeModel empObj = EmployeeModel(jsonData);
    setState(() {
      empData = empObj.data!;
    });
  }
}
