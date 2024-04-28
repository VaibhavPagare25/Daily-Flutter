import 'package:flutter/material.dart';
import 'package:provider_practical/model/product_model.dart';

class ProductController extends ChangeNotifier {
  ProductModel? productModelObj;

  //To Add Product Data
  void addProductData({required ProductModel pObj}) {
    productModelObj = pObj;
  }

  // Add To Favourite
  void addToFavourite() {
    productModelObj!.isFavourite = productModelObj!.isFavourite;
    notifyListeners();
  }

  //Add Quantity
  void addQuantity() {
    productModelObj!.quantity = productModelObj!.quantity! + 1;
    notifyListeners();
  }

  //Remove Quantity
  void removeQuantity() {
    productModelObj!.quantity = productModelObj!.quantity! - 1;
    notifyListeners();
  }
}
