import 'package:flutter/material.dart';
import 'package:provider_example/model/product_model.dart';

class WishlistController extends ChangeNotifier {
  List<ProductModel> productWishList = [];
  int wishValue = 1;

  //ADD TO WHISHLIST
  void addToWishlist(ProductModel obj) {
    productWishList.add(obj);
    notifyListeners();
  }

  //REMOVE PRODUCT FROM WHISHLIST
  void removeFromWishlist(int index) {
    productWishList.removeAt(index);
    notifyListeners();
  }
}
