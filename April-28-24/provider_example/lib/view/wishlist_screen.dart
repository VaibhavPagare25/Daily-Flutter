import 'package:flutter/material.dart';
import 'package:provider_example/controller/whishlist_controller .dart';
import 'package:provider_example/model/product_model.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wishlist",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple.shade300,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return const ListTile();
      }),
    );
  }
}
