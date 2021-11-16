import 'dart:ui';

class Shoe {
  int? id;
  String? brand;
  String? productName;
  num? price;
  bool? isFav;
  Color? backgroundColor;
  String? productImage;

  Shoe(
      {this.id,
      this.brand,
      this.productName,
      this.price,
      this.isFav,
      this.backgroundColor,
      this.productImage});

  Shoe.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    brand = json["brand"];
    productName = json["productName"];
    price = json["price"];
    isFav = json["isFav"];
    productImage = json["productImage"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["brand"] = brand;
    data["productName"] = productName;
    data["price"] = price;
    data["isFav"] = isFav;
    data["productImage"] = productImage;
    return data;
  }
}
