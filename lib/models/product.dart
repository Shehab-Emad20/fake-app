// models/product.dart

class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  /// Create Product from JSON, handling multiple formats (FakeStore or custom).
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id:
          json['id'] is int
              ? json['id']
              : int.tryParse(json['id'].toString()) ?? 0,
      name: json['title'] ?? json['name'] ?? 'Unknown',
      description: json['description'] ?? 'No description',
      price:
          json['price'] is num
              ? (json['price'] as num).toDouble()
              : double.tryParse(json['price'].toString()) ?? 0.0,
      imageUrl: json['image'] ?? json['imageUrl'] ?? '',
    );
  }
}
