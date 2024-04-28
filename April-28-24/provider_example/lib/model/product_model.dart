class ProductModel {
  String? productName;
  String? productImage;
  int productQuantity;
  bool isFavoutire = false;
  String? price;

  ProductModel({
    this.isFavoutire = false,
    this.price,
    this.productImage,
    this.productName,
    this.productQuantity = 0,
  });
}
