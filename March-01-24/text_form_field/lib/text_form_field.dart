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

  GlobalKey<FormFieldState> userNameKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FormDemo"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: Form(
        key: loginKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            SizedBox(
              width: 370,
              child: TextFormField(
                // key: userNameKey,
                controller: _userNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Enter Username",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter username";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 370,
              child: TextFormField(
                //key: passwordKey,
                controller: _passController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Enter Password",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Password";
                  } else {
                    return null;
                  }
                },
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
                onPressed: () {
                  bool isValidated = loginKey.currentState!.validate();

                  if (isValidated) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Login Successful"),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Login Failed"),
                      ),
                    );
                  }
                  // bool isUserNameValidated = userNameKey.currentState!.validate();
                  // bool isPassValidated = passwordKey.currentState!.validate();

                  // if (isUserNameValidated && isPassValidated) {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //       content: Text("Login Successful"),
                  //     ),
                  //   );
                  // } else {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //       content: Text("Login Failed"),
                  //     ),
                  //   );
                  // }
                },
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
