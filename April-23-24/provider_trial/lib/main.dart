import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_trial/changeNotifierProvider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return const Company(compName: "VSP Enterproses", empCount: 25);
          },
          // child: const MaterialApp(
          //   debugShowCheckedModeBanner: false,
          //   home: ProviderTrial(),
          // ),
        ),
        ChangeNotifierProvider(
          create: (context) {
            return Employee(compName: "Amazon", salary: 50000.00);
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ChangeNotifierTrial(),
      ),
    );
  }
}

class ProviderTrial extends StatefulWidget {
  const ProviderTrial({super.key});

  @override
  State<ProviderTrial> createState() => _ProviderTrialState();
}

class _ProviderTrialState extends State<ProviderTrial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ProviderTrial"),
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Text(Provider.of<Company>(context, listen: false).compName),
          const SizedBox(
            height: 10,
          ),
          Text(Provider.of<Company>(context).empCount.toString()),
          Text("${Provider.of<Company>(context).empCount}"),
          const SecondClass(),
        ],
      ),
    );
  }
}

class SecondClass extends StatelessWidget {
  const SecondClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("${Provider.of<Company>(context).empCount}");
  }
}

class Company {
  final String compName;
  final int empCount;

  const Company({required this.compName, required this.empCount});
}
