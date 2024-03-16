// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app_sqflite/model_class.dart';
import 'main.dart';

class ToDoAppp extends StatefulWidget {
  const ToDoAppp({super.key});

  @override
  State<ToDoAppp> createState() => _ToDoApppState();
}

class _ToDoApppState extends State<ToDoAppp> {
  TextEditingController titleCon = TextEditingController();
  TextEditingController descriptionCon = TextEditingController();
  TextEditingController dateCon = TextEditingController();

  GlobalKey<FormState> _taskKey = GlobalKey<FormState>();

  List<Model> dispData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: const Color(0xff02A7B1),
      ),
      body: (dispData.isNotEmpty)
          ? ListView.builder(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              itemCount: dispData.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 20),
                      // EdgeInsets.only(
                      //     left: MediaQuery.of(context).size.width),
                      child: Card(
                        elevation: 8,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(colors[index % colors.length]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 70,
                                  //width: 200,
                                  margin: const EdgeInsets.only(
                                      top: 30, left: 10, right: 10),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    "assets/images/image1.png",
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 260,
                                      child: Text(
                                        dispData[index].maptitle,
                                        style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 260,
                                      child: Text(
                                        dispData[index].mapdescription,
                                        style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 22,
                                ),
                                Text(
                                  dispData[index].mapdate,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {
                                    _showBottomSheet(taskObj: dispData[index]);
                                    // await loadContent();
                                    //setState(() {});
                                  },
                                  icon: const Icon(
                                    Icons.edit_outlined,
                                    color: Color(0xff008B94),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () async {
                                    await removeCard(dispData[index]);
                                    await loadContent();
                                    setState(() {
                                      // dispData.removeWhere((task) =>
                                      //     task.id == dispData[index].id);

                                      ///dispData.removeAt(index);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.delete_outline,
                                    color: Color(
                                      0xff008B94,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            )
          : Center(
              child: Text(
                "Hey, Have a productive day!",
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    color: Colors.cyan.shade900,
                    fontSize: 40,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("In floatingActionButon");
          setState(() {
            titleCon.clear();
            descriptionCon.clear();
            dateCon.clear();
            _showBottomSheet();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loadContent();
  }

  Future<void> loadContent() async {
    // List<Model> data = await getMapData();
    dispData = await getMapData();
    setState(() {});
  }

  // void editCard(Model editObj) {
  //   titleCon.text = editObj.maptitle;
  //   descriptionCon.text = editObj.mapdescription;
  //   dateCon.text = editObj.mapdate;
  //   _showBottomSheet(editObj: editObj);
  // }

  // void removeCard(Model removeObj) {
  //   setState(() {
  //     dispData.remove(removeObj);
  //   });
  // }

  // void submitCard({Model? editObj}) {
  //   setState(() {
  //     //If all data is present in the controller then only it will add a new task
  //     bool isValidated = _taskKey.currentState!.validate();
  //     if (isValidated) {
  //       // if (titleCon.text.trim().isNotEmpty &&
  //       //     descriptionCon.text.trim().isNotEmpty &&
  //       //     dateCon.text.trim().isNotEmpty) {
  //       if (editObj != null) {
  //         editObj.maptitle = titleCon.text.trim();
  //         editObj.mapdescription = descriptionCon.text.trim();
  //         editObj.mapdate = dateCon.text.trim();
  //       } else {
  //         // Adding a new task
  //         dispData.add(
  //           Model(
  //             // id: uniqueId,
  //             maptitle: titleCon.text.trim(),
  //             mapdescription: descriptionCon.text.trim(),
  //             mapdate: dateCon.text.trim(),
  //           ),
  //         );
  //       }
  //       // }
  //       if (editObj == null) {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(
  //             content: Text("Task added"),
  //           ),
  //         );
  //       } else {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(
  //             content: Text("Task Updated"),
  //           ),
  //         );
  //       }
  //     }
  //   });
  //   //uniqueId++;
  //   clearControllers();
  //   Navigator.pop(context);
  // }

  Future<List<Model>> getMapData() async {
    final localDB = await database;

    if (localDB != null) {
      List<Map<String, dynamic>> cardList = await localDB.query('Todo');

      return List.generate(cardList.length, (index) {
        return Model(
          id: cardList[index]['id'],
          maptitle: cardList[index]['maptitle'],
          mapdescription: cardList[index]['mapdescription'],
          mapdate: cardList[index]['mapdate'],
        );
      });
    } else {
      return [];
    }
  }

  void submit({Model? taskObj}) async {
    bool isValidated = _taskKey.currentState!.validate();
    if (isValidated) {
      if (taskObj != null) {
        editCard(taskObj);
      } else {
        await addCard(
          Model(
            maptitle: titleCon.text.trim(),
            mapdescription: descriptionCon.text.trim(),
            mapdate: dateCon.text.trim(),
          ),
        );
      }
      if (taskObj == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Task added"),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Task Updated"),
          ),
        );
      }
    }
  }

  Future<void> addCard(Model taskObj) async {
    final localDB = await database;

    if (localDB != null) {
      await localDB.insert(
        "Todo",
        taskObj.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    print(await getMapData());
  }

  Future<void> editCard(Model editObj) async {
    final localDB = await database;

    // editObj = Model(
    //   maptitle: titleCon.text.trim(),
    //   mapdescription: descriptionCon.text.trim(),
    //   mapdate: dateCon.text.trim(),
    // );
    editObj.maptitle = titleCon.text.trim();
    editObj.mapdescription = descriptionCon.text.trim();
    editObj.mapdate = dateCon.text.trim();

    await localDB.update(
      'Todo',
      editObj.toMap(),
      where: 'id = ?',
      whereArgs: [editObj.id],
    );
  }

  Future<void> removeCard(Model removeObj) async {
    final localDB = await database;

    await localDB.delete(
      'Todo',
      where: 'id = ?',
      whereArgs: [removeObj.id],
    );
    print(await getMapData());
  }

  void clearControllers() {
    titleCon.clear();
    descriptionCon.clear();
    dateCon.clear();
  }

  void _showBottomSheet({Model? taskObj}) {
    if (taskObj != null) {
      titleCon.text = taskObj.maptitle;
      descriptionCon.text = taskObj.mapdescription;
      dateCon.text = taskObj.mapdate;
    }
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            // height: 500,
            width: double.infinity,
            child: Form(
              key: _taskKey,
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Text(
                      "Create Task",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 380,
                    margin: const EdgeInsets.only(
                      bottom: 5,
                    ),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Title",
                      style: TextStyle(
                        color: Colors.cyan.shade600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 380,
                    child: TextFormField(
                      // maxLines: null,
                      controller: titleCon,
                      cursorColor: Colors.cyan.shade600,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.cyan.shade600,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.cyan.shade600,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Please enter some data";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 380,
                    margin: const EdgeInsets.only(
                      bottom: 5,
                    ),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.cyan.shade600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 380,
                    child: TextFormField(
                      maxLines: null,
                      controller: descriptionCon,
                      cursorColor: Colors.cyan.shade600,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.cyan.shade600,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.cyan.shade600,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Please enter some data";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 380,
                    margin: const EdgeInsets.only(
                      bottom: 5,
                    ),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Date",
                      style: TextStyle(
                        color: Colors.cyan.shade600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 380,
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      controller: dateCon,
                      cursorColor: Colors.cyan.shade600,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.date_range_outlined,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.cyan.shade600,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.cyan.shade600,
                          ),
                        ),
                      ),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2022),
                          lastDate: DateTime(2026),
                        );
                        String formatedDate =
                            DateFormat.yMMMd().format(pickedDate!);
                        setState(
                          () {
                            dateCon.text = formatedDate;
                          },
                        );
                      },
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Please enter some data";
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
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.cyan.shade600,
                        ),
                      ),
                      onPressed: () {
                        submit(taskObj: taskObj);
                        //(editObj: editObj);
                        Navigator.pop(context);
                        loadContent();
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
