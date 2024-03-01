import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  //GlobalKey<FormField> userNameKey = GlobalKey<FormField>

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FormDemo"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          SizedBox(
            width: 370,
            child: TextFormField(
              controller: _userNameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Enter Username"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 370,
            child: TextFormField(
              controller: _passController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Enter Username"),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.deepPurple.shade300,
                ),
                foregroundColor: const MaterialStatePropertyAll(
                  Colors.white,
                ),
              ),
              onPressed: () {},
              child: const Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}
