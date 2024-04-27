import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("In MyApp build");
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return Company(
                compName: "Goldman Sachs", empName: "Vaibhav", empId: 25);
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CompanyData(),
      ),
    );
  }
}

class CompanyData extends StatefulWidget {
  const CompanyData({super.key});

  @override
  State<CompanyData> createState() => _CompanyDataState();
}

class _CompanyDataState extends State<CompanyData> {
  @override
  Widget build(BuildContext context) {
    log("In CompanyData build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Own Company",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Hey",
            // Provider.of<Company>(context).compName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          const Text(
            // Provider.of<Company>(context).empName,
            "Hello",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Consumer(builder: (context, value, child) {
            log("In Consumer");
            return Text(
              "${Provider.of<Company>(context).empId}",
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            );
          }),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.deepPurple.shade300,
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.deepPurple.shade900),
                ),
              ),
            ),
            onPressed: () {
              Provider.of<Company>(context, listen: false)
                  .updateData("Atlashian", "VSP", 24);
            },
            child: const Text(
              "Change details",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Company extends ChangeNotifier {
  String compName;
  String empName;
  int empId;

  Company({required this.compName, required this.empName, required this.empId});

  void updateData(String compName, String empName, int empId) {
    this.compName = compName;
    this.empName = empName;
    this.empId = empId;
    notifyListeners();
  }
}
