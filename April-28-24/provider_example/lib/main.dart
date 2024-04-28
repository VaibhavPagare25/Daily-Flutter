import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/controller/product_controller.dart';
import 'package:provider_example/controller/whishlist_controller%20.dart';
import 'package:provider_example/view/get_product_details.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return ProductController();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return WishlistController();
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetProductDetails(),
      ),
    );
  }
}
