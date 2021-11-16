import 'dart:ui';

class Sales {
  int? id;
  int? discountPer;
  String? productImage;
  Color? backgroudColor;
  Color? tagColor;
  num? price;

  Sales(
      {this.id,
      this.discountPer,
      this.productImage,
      this.price,
      this.backgroudColor,
      this.tagColor});

  Sales.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    discountPer = json["discountPer"];
    productImage = json["productImage"];
    price = json["price"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["discountPer"] = discountPer;
    data["productImage"] = productImage;
    data["price"] = price;
    return data;
  }
}
