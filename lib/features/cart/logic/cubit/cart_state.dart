// features/cart/logic/cubit/cart_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/cart_item.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.loading() = Loading;
  const factory CartState.success(List<CartItem> cartItems) = Success;
  const factory CartState.error({required String error}) = Error;
}
