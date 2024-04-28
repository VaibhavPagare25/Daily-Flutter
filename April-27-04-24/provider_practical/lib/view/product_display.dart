import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practical/controller/product_controller.dart';

class ProductDisplay extends StatelessWidget {
  const ProductDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<ProductController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Display"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Image.network(
                  "${Provider.of<ProductController>(context, listen: false).productModelObj?.productImage}"),
              const SizedBox(height: 10),
              Text("${providerObj.productModelObj?.productName}"),
              const SizedBox(height: 10),
              Text("${providerObj.productModelObj?.price}"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //IS FAVOURITE
                  Consumer<ProductController>(
                    builder: (context, value, child) {
                      return GestureDetector(
                        onTap: () {
                          providerObj.addToFavourite();
                        },
                        child: Icon(
                          (providerObj.productModelObj!.isFavourite!)
                              ? Icons.favorite_rounded
                              : Icons.favorite_outline_rounded,
                        ),
                      );
                    },
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          providerObj.addQuantity();
                        },
                        child: const Icon(Icons.add),
                      ),
                      const SizedBox(width: 5),

                      //Quantity
                      Consumer<ProductController>(
                          builder: (context, value, child) {
                        return Text(
                          "${providerObj.productModelObj?.quantity}",
                        );
                      }),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          providerObj.removeQuantity();
                        },
                        child: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// https://cdn.pixabay.com/photo/2022/01/26/03/45/flowers-6967755_640.jpg