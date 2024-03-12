import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic myDatabase;

class Player {
  final String name;
  final int jerNo;
  final int runs;
  final double avg;

  Player({
    required this.name,
    required this.jerNo,
    required this.runs,
    required this.avg,
  });

  Map<String, dynamic> playerMap() {
    return {
      'name': name,
      'jerNo': jerNo,
      'runs': runs,
      'avg': avg,
    };
  }

  @override
  String toString() {
    return '{name: $name, jerNo : $jerNo, runs: $runs, avg : $avg}';
  }
}

Future insertPlayerData(Player obj) async {
  final localDB = await myDatabase;

  await localDB.insert(
    "Player",
    obj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Player>> getPlayerData() async {
  final localDB = await myDatabase;

  List<Map<String, dynamic>> listPlayers = await localDB.query("Player");

  return List.generate(listPlayers.length, (index) {
    return Player(
      name: listPlayers[index]['name'],
      jerNo: listPlayers[index]['jerNo'],
      runs: listPlayers[index]["runs"],
      avg: listPlayers[index]["avg"],
    );
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  myDatabase = openDatabase(
    join(await getDatabasesPath(), "PlayerDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Player(
          name TEXT,
          jerNo INTEGER PRIMARY KEY,
          runs INT,
          avg REAL)''');
    },
  );

  //insert data
  Player batsman1 = Player(
    name: "Virat Kohli",
    jerNo: 18,
    runs: 15000,
    avg: 50.33,
  );

  insertPlayerData(batsman1);

  Player batsman2 = Player(
    name: "Rohit Sharma",
    jerNo: 45,
    runs: 80000,
    avg: 20.33,
  );

  insertPlayerData(batsman2);

  Player batsman3 = Player(
    name: "Shubhman Gill",
    jerNo: 77,
    runs: 10000,
    avg: 10.44,
  );

  await insertPlayerData(batsman3);

  print(await getPlayerData);
}
