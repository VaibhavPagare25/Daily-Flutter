import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeNotifierTrial extends StatefulWidget {
  const ChangeNotifierTrial({super.key});

  @override
  State<ChangeNotifierTrial> createState() => _ChangeNotifierTrialState();
}

class _ChangeNotifierTrialState extends State<ChangeNotifierTrial> {
  // _ChangeNotifierTrialState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangeNotifierProvider Trial"),
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Provider.of<Employee>(context).compName),
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Text("${Provider.of<Employee>(context).salary}"),
          ElevatedButton(
            onPressed: () {
              Provider.of<Employee>(context, listen: false)
                  .changeCompany("Goldman Sachs", 80000.00);
            },
            child: const Text("Change Company"),
          )
        ],
      ),
    );
  }
}

class Employee extends ChangeNotifier {
  String compName;
  double salary;

  Employee({required this.compName, required this.salary});

  void changeCompany(String compName, double salary) {
    this.compName = compName;
    this.salary = salary;
    notifyListeners();
  }
}
