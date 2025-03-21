// features/cart/data/repos/cart_repo.dart
import 'package:sleman_store_app/core/helpers/shared_pref_helper.dart';

import '../models/cart_item.dart'; // Import your CartItem model

class CartRepo {
  Future<void> addToCart(CartItem item) async {
    final cartItems = await getCartItems();
    cartItems.add(item);
    await SharedPrefHelper.saveCartItems(
        cartItems.map((e) => e.toJson()).toList());
  }

  Future<void> removeFromCart(String itemId) async {
    final cartItems = await getCartItems();
    cartItems.removeWhere((item) => item.id == itemId);
    await SharedPrefHelper.saveCartItems(
        cartItems.map((e) => e.toJson()).toList());
  }

  Future<void> updateCartItem(CartItem item) async {
    final cartItems = await getCartItems();
    final index = cartItems.indexWhere((i) => i.id == item.id);
    if (index != -1) {
      cartItems[index] = item;
      await SharedPrefHelper.saveCartItems(
          cartItems.map((e) => e.toJson()).toList());
    }
  }

  Future<List<CartItem>> getCartItems() async {
    final jsonList = await SharedPrefHelper.getCartItems();
    return jsonList.map((json) => CartItem.fromJson(json)).toList();
  }

  Future<void> clearCart() async {
    await SharedPrefHelper.removeData('cartItems');
  }
}
