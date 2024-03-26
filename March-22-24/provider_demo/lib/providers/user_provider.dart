import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String userName;
  int counter = 0;
  UserProvider({
    this.userName = "Mapp",
  });

  void changeUserName({
    required String newUserName,
  }) async {
    userName = newUserName;
    notifyListeners();
  }

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void decrementCounter() {
    counter--;
    notifyListeners();
  }
}
