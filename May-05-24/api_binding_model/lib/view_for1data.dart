import 'dart:developer';

import 'package:api_binding_model/controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EmployeeOne extends StatefulWidget {
  const EmployeeOne({super.key});

  @override
  State createState() => _EmployeeOneState();
}

class _EmployeeOneState extends State {
  List<MapData> empData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee One Data"),
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: (empData.isNotEmpty)
          ? Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  border: Border.all(color: Colors.blue),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(empData[0].empName!),
                    Text(empData[0].empSal!.toString()),
                    Text(empData[0].empAge!.toString()),
                  ],
                ),
              ),
            )
          : Center(
              child: const Text("Hello click on floating action button"),
            ),
      floatingActionButton: FloatingActionButton(onPressed: getOneData),
    );
  }

  void getOneData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employee/1");
    http.Response response = await http.get(url);
    log(response.body);

    var jsonData = json.decode(response.body);
    OneEmployeeModel obj = OneEmployeeModel(jsonData);
    setState(() {
      empData = obj.data!;
    });
  }
}
