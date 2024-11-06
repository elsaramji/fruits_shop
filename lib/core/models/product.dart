// core/models/product.dart
class Product {
  final String name;
  final String image;
  final String? description;
  final double price;
  final String unit;
  final String? category;

  Product({
    required this.name,
    required this.image,
    this.description,
    required this.price,
    required this.unit,
    this.category,
  });
}
