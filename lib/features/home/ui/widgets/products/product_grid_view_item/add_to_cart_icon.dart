import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/features/cart/data/models/cart_item.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_state.dart';
import 'package:sleman_store_app/features/home/data/models/product.dart';

class AddToCartIcon extends StatelessWidget {
  const AddToCartIcon({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final cartCubit = context.read<CartCubit>();
        final isInCart = cartCubit.isItemInCart(product.id.toString());

        return Positioned(
          top: 0,
          right: 0,
          child: CartIconContainer(
            isInCart: isInCart,
            onPressed: () => _handleCartAction(context, isInCart, cartCubit),
          ),
        );
      },
    );
  }

  void _handleCartAction(
      BuildContext context, bool isInCart, CartCubit cartCubit) {
    if (isInCart) {
      cartCubit.removeFromCart(product.id.toString());
      _showSnackBar(context, LocaleKeys.removed_from_cart.tr());
    } else {
      cartCubit.addToCart(product);
      _showSnackBar(context, LocaleKeys.added_to_cart.tr());
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: ColorsManager.blackGray,
        content: Row(
          children: [
            Expanded(
              child: CustomText(
                align: TextAlign.center,
                text: '${product.title} ',
              ),
            ),
            Expanded(
              child: CustomText(
                align: TextAlign.center,
                text: ' $message',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartIconContainer extends StatelessWidget {
  final bool isInCart;
  final VoidCallback onPressed;

  const CartIconContainer({
    super.key,
    required this.isInCart,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(50.r),
        border: Border.all(width: 1, color: ColorsManager.lightGray),
      ),
      child: CartIconButton(
        isInCart: isInCart,
        onPressed: onPressed,
      ),
    );
  }
}

class CartIconButton extends StatelessWidget {
  final bool isInCart;
  final VoidCallback onPressed;

  const CartIconButton({
    super.key,
    required this.isInCart,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        size: 25.sp,
        isInCart ? Icons.remove_shopping_cart : Icons.add_shopping_cart,
        color: ColorsManager.blackGray,
      ),
      onPressed: onPressed,
    );
  }
}
