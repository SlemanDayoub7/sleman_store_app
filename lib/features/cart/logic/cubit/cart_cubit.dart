// features/cart/logic/cubit/cart_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_state.dart';
import 'package:sleman_store_app/features/home/data/models/product.dart';
import '../../data/repos/cart_repo.dart';
import '../../data/models/cart_item.dart'; // Import your CartItem model

class CartCubit extends Cubit<CartState> {
  final CartRepo _cartRepo;

  CartCubit(this._cartRepo) : super(CartState.initial()) {
    _initialize();
  }

  _initialize() async {
    emit(CartState.loading());
    final cartItems = await _cartRepo.getCartItems();
    emit(CartState.success(cartItems));
  }

  Future<void> addToCart(Product product) async {
    // emit(CartState.loading());
    await _cartRepo.addToCart(makeCartItem(product));
    final cartItems = await _cartRepo.getCartItems();
    emit(CartState.success(cartItems));
  }

  Future<void> removeFromCart(String itemId) async {
    // emit(CartState.loading());
    await _cartRepo.removeFromCart(itemId);
    final cartItems = await _cartRepo.getCartItems();
    emit(CartState.success(cartItems));
  }

  Future<void> updateCartItem(CartItem item, bool increase) async {
    // emit(CartState.loading());
    item = CartItem(
      id: item.id.toString(),
      productId: item.id.toString(),
      name: item.name,
      category: item.category,
      price: item.price,
      quantity: item.quantity + (increase ? 1 : -1),
      imageUrl: item.imageUrl,
    );

    await _cartRepo.updateCartItem(item);
    final cartItems = await _cartRepo.getCartItems();
    emit(CartState.success(cartItems));
  }

  Future<void> loadCart() async {
    emit(CartState.loading());
    final cartItems = await _cartRepo.getCartItems();
    emit(CartState.success(cartItems));
  }

  Future<void> clearCart() async {
    emit(CartState.loading());
    await _cartRepo.clearCart();
    emit(CartState.success([]));
  }

  bool isItemInCart(String itemId) {
    if (state is Success) {
      final cartItems = (state as Success).cartItems;
      return cartItems.any((item) => item.id == itemId);
    }
    return false;
  }

  CartItem makeCartItem(Product product) {
    return CartItem(
      id: product.id.toString(),
      productId: product.id.toString(),
      name: product.title,
      category: product.category,
      price: product.price,
      quantity: 1,
      imageUrl: product.image,
    );
  }
}
