import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/user_provider.dart';

class Change extends StatefulWidget {
  const Change({super.key});

  @override
  State<Change> createState() => _ChangeState();
}

class _ChangeState extends State<Change> {
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change"),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 20),
              child: Text("UserName: "),
            ),
          ),
          const SizedBox(
            width: double.infinity,
          ),
          SizedBox(
            width: 350,
            child: TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              context
                  .read<UserProvider>()
                  .changeUserName(newUserName: _nameController.text);
              _nameController.clear();
            },
            child: const Text("Change"),
          )
        ],
      ),
    );
  }
}
