import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.yellow,
            fontSize: 30,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Theme And TextField",
          ),
        ),
        body: const TextFieldTry(),
      ),
    );
  }
}

class TextFieldTry extends StatefulWidget {
  const TextFieldTry({super.key});

  @override
  State<TextFieldTry> createState() => _TextFieldTryState();
}

class _TextFieldTryState extends State<TextFieldTry> {
  var email = TextEditingController();
  var pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 320,
            child: TextField(
              maxLines: 1,
              controller: email,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                  color: Colors.green,
                ),
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.green,
                ),
                labelText: "Username",
                labelStyle: const TextStyle(
                  color: Colors.green,
                ),
                //hintText: "Input",
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                floatingLabelStyle: const TextStyle(
                  color: Colors.greenAccent,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green.shade700,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              //enabled: false,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 320,
            height: 60,
            child: TextField(
              cursorColor: Colors.green,
              maxLines: 1,
              obscureText: true,
              controller: pass,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: const TextStyle(
                  color: Colors.green,
                ),
                prefixIcon: const Icon(
                  Icons.privacy_tip,
                  color: Colors.green,
                ),
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                  color: Colors.green,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.green,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.green.shade700,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade100),
            onPressed: () {
              String uEmail = email.text;
              String uPass = pass.text;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Mail : $uEmail  Pass : $uPass"),
                  backgroundColor: Colors.green,
                ),
              );
            },
            child: Text(
              "Sign in",
              style: TextStyle(color: Colors.green.shade800),
            ),
          ),
        ],
      ),
    );
  }
}
