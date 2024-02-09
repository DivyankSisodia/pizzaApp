class PizzaModel {
  int productId;
  String? name;
  bool? isVeg;
  String? image;
  String? description;
  double? price;

  PizzaModel({
    required this.productId,
    this.name,
    this.isVeg,
    this.image,
    this.description,
    this.price,
  });
}
