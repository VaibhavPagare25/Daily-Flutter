import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app_sqflite/todo.dart';

dynamic database;

// Future<Database> openDatabaseConnection() async {
//   final databasePath = join(await getDatabasesPath(), 'ToDo_database.db');
//   return await openDatabase(
//     databasePath,
//     version: 1,
//     onCreate: (db, version) async {
//       await db.execute('''
//         CREATE TABLE Todo (

//           maptitle TEXT NOT NULL,
//           mapdescription TEXT NOT NULL,
//           mapdate TEXT NOT NULL
//         )''');
//     },
//   );
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // database = await openDatabaseConnection();
  database = openDatabase(
    join(await getDatabasesPath(), 'Todo_db2.db'),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
      create table Todo(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      maptitle text,
      mapdescription text,
      mapdate text)''');
    },
  );
  runApp(const MainApp());
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
