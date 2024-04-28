class ProductModel {
  String? productImage;
  String? productName;
  String? price;
  bool? isFavourite = false;
  int? quantity = 0;

  ProductModel({
    this.isFavourite,
    this.price,
    this.productImage,
    this.productName,
    this.quantity,
  });
}
