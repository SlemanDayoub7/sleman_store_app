import 'package:json_annotation/json_annotation.dart';
part 'cart_item.g.dart';

@JsonSerializable()
class CartItem {
  final String id;
  final String productId;
  final String name;
  final String category;
  final double price;
  final int quantity;
  final String imageUrl;

  CartItem({
    required this.category,
    required this.id,
    required this.productId,
    required this.name,
    required this.price,
    required this.quantity,
    required this.imageUrl,
  });
  Map<String, dynamic> toJson() => _$CartItemToJson(this);

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
