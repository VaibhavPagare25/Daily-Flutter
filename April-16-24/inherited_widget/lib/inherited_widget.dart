import 'package:flutter/material.dart';

class SharedData extends InheritedWidget {
  final int data;
  const SharedData({super.key, required this.data, required super.child});

  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return data != oldWidget.data;
  }
}


// class ModelData extends InheritedWidget {
//   int data;
//   ModelData({super.key, required this.data,required super.child});

//   static ModelData of(BuildContext context){
//     return context.dependOnInheritedWidgetOfExactType<ModelData>()!;
//   }

//   bool updateShouldNotify(ModelData oldWidget) {
//     return data != oldWidget.data;
//   }
// }
