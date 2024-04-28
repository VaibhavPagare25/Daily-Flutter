import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/model/product_model.dart';

class GetProductDetails extends StatefulWidget {
  const GetProductDetails({super.key});

  @override
  State<GetProductDetails> createState() => _GetProductDetailsState();
}

class _GetProductDetailsState extends State<GetProductDetails> {
  final TextEditingController _productImageController = TextEditingController();
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _productPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          SizedBox(
            width: 360,
            child: TextFormField(
              controller: _productImageController,
              decoration: InputDecoration(
                labelText: "Add Product Image",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // ADD PRODUCT NAME
          SizedBox(
            width: 360,
            child: TextFormField(
              controller: _productNameController,
              decoration: InputDecoration(
                labelText: "Enter Product Name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // ADD PRODUCT NAME
          SizedBox(
            width: 360,
            child: TextFormField(
              controller: _productPriceController,
              decoration: InputDecoration(
                labelText: "Enter Product Price",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                var obj = ProductModel(
                  isFavoutire: false,
                  productName: _productNameController.text.trim(),
                  productImage: _productImageController.text.trim(),
                  price: _productPriceController.text.trim(),
                );
              },
              child: const Text("Submit"),
            ),
          ),
        ],
      ),
    );
  }
}
