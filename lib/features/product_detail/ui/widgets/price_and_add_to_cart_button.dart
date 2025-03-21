import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_button.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_state.dart';
import 'package:sleman_store_app/features/home/data/models/product.dart';

class PriceAndAddToCartButton extends StatelessWidget {
  const PriceAndAddToCartButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: ColorsManager.softGray))),
        child: Row(
          spacing: 10.h,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      color: ColorsManager.darkGray,
                      text: LocaleKeys.price.tr(),
                      style: TextStyles.b1Regular),
                  CustomText(
                      text: r'$' + product.price.toString(),
                      style: TextStyles.h3Semibold)
                ],
              ),
            ),
            BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                final cartCubit = context.read<CartCubit>();
                final isInCart = cartCubit.isItemInCart(product.id.toString());
                print(isInCart);
                return CustomButton(
                  width: 240.w,
                  color: ColorsManager.blackGray,
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: ColorsManager.white,
                    size: 30.sp,
                  ),
                  text: isInCart
                      ? LocaleKeys.remove_from_cart.tr()
                      : LocaleKeys.add_to_cart.tr(),
                  onPressed: () {
                    if (isInCart) {
                      cartCubit.removeFromCart(product.id.toString());
                    } else {
                      cartCubit.addToCart(product);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
