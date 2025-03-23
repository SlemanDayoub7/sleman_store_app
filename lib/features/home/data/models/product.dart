
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  Map<String, dynamic> toJson() => _$ProductToJson(this);
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
