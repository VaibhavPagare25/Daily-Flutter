import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practical/controller/product_controller.dart';
import 'package:provider_practical/view/get_product_details.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ProductController();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetProductDetails(),
      ),
    );
  }
}
