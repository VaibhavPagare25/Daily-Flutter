// import 'package:flutter/widgets.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// dynamic database;

// class Zomato {
//   int orderNo;
//   String custName;
//   String hotelName;
//   double bill;

//   Zomato({
//     required this.orderNo,
//     required this.custName,
//     required this.hotelName,
//     required this.bill,
//   }
// );

//   Map<String, dynamic> toMap() {
//     return {
//       'orderNo': orderNo,
//       'custName': custName,
//       'hotelName': hotelName,
//       'bill': bill,
//     };
//   }
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   String path = await getDatabasesPath();
//   print(path);

//   database = await openDatabase(
//     // join(await getDatabasesPath(), "ZomatoDB.db"),
//     "${await getDatabasesPath()},/ZomatoDB3.db)",
//     version: 1,
//     onCreate: (db, version) {
//       db.execute('''CREATE TABLE Zomato(
//       orderNo INTEGER PRIMARY KEY,
//       custName TEXT,
//       hotelName text,
//       bill REAL)''');
//     },
//   );

//   Zomato obj1 = Zomato(
//     orderNo: 1,
//     custName: 'Vaibhav',
//     hotelName: 'Maratha',
//     bill: 25,
//   );

//   database.insert(
//     "Zomato",
//     obj1.toMap(),
//     conflictAlgorithm: ConflictAlgorithm.replace,
//   );

//   print(await getData());
// }

// Future getData() async {
//   final localDB = await database;

//   List<Map<String, dynamic>> list = await localDB.query('Zomato');

//   return list;
// }

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String path = await getDatabasesPath();
  print(path);

  database = openDatabase(
    join(await getDatabasesPath(), 'ZomatoDB8.db'),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Zomato(
      orderNo Integer PRIMARY KEY,
      custName Text,
      hotelName text,
      bill REAL)''');
    },
  );

  Zomato obj1 = Zomato(
    //orderNo: 1,
    custName: 'Vaibhav',
    hotelName: 'Neel',
    bill: 580,
  );

  insertData(obj1);

  Zomato obj2 = Zomato(
    // orderNo: 2,
    custName: 'Atharv',
    hotelName: 'Sagam',
    bill: 480,
  );

  insertData(obj2);

  print(await getMapData());

  obj1 = Zomato(
    orderNo: obj1.orderNo,
    custName: obj1.custName,
    hotelName: "${obj1.hotelName} and Sandip",
    bill: obj1.bill + 150,
  );

  updateOrder(obj1);

  print(await getMapData());

  deleteOrder(2);

  print(await getMapData());
}

Future<void> insertData(Zomato obj) async {
  final localDB = await database;

  await localDB.insert(
    "Zomato",
    obj.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future updateOrder(Zomato obj) async {
  final localDB = await database;

  await localDB.update(
    "Zomato",
    obj.toMap(),
    where: 'orderNo = ?',
    whereArgs: [obj.orderNo],
  );
}

Future<void> deleteOrder(int data) async {
  final localDB = await database;

  await localDB.delete(
    'Zomato',
    where: 'orderNo = ?',
    whereArgs: [data],
  );
}

Future<List<Zomato>> getMapData() async {
  final localDB = await database;

  List<Map<String, dynamic>> zmList = await localDB.query("Zomato");

  return List.generate(zmList.length, (index) {
    return Zomato(
      orderNo: zmList[index]['orderNo'],
      custName: zmList[index]['custName'],
      hotelName: zmList[index]['hotelName'],
      bill: zmList[index]['bill'],
    );
  });
}

class Zomato {
  int? orderNo;
  String custName;
  String hotelName;
  double bill;

  Zomato({
    this.orderNo,
    required this.custName,
    required this.hotelName,
    required this.bill,
  });
  Map<String, dynamic> toMap() {
    return {
      //'orderNo': orderNo,
      'custName': custName,
      'hotelName': hotelName,
      'bill': bill,
    };
  }

  @override
  String toString() {
    return '{orderNo : $orderNo, custName : $custName, hotelName : $hotelName, bill : $bill}';
  }
}
