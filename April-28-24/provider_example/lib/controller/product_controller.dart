import 'package:flutter/material.dart';
import 'package:provider_example/model/product_model.dart';

class ProductController extends ChangeNotifier {
  List<ProductModel> productList = [];

  //ADD PRODUCT
  void addProduct(ProductModel obj) {
    productList.add(obj);
    notifyListeners();
  }

  //ADD TO FAVOURITE
  void addToFavourite({required int index}) {
    productList[index].isFavoutire = !productList[index].isFavoutire;
    notifyListeners();
  }

  //ADD QUANTITY
  void addQuantity({required int index}) {
    productList[index].productQuantity = productList[index].productQuantity + 1;
    notifyListeners();
  }

  //REMOVE QUANTITY
  void removeQuantity({required int index}) {
    productList[index].productQuantity = productList[index].productQuantity - 1;
    notifyListeners();
  }
}
