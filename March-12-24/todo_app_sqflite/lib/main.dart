import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app_sqflite/todo.dart';

dynamic database;

void main() async {
  runApp(const MainApp());

  database = openDatabase(
    join(await getDatabasesPath(), 'ToDoDB.db'),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
      create table Todo(
      title text,
      description text,
      date text)''');
    },
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoAppp(),
    );
  }
}
