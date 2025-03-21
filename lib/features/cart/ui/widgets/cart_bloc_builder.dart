import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sleman_store_app/core/constants/asset_paths.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/widgets/custom_no_data.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_state.dart';
import 'package:sleman_store_app/features/cart/ui/widgets/cart_list_view.dart';
import 'package:sleman_store_app/features/cart/ui/widgets/cart_summary.dart';

class CartBlocBuilder extends StatelessWidget {
  const CartBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return state.when(
          initial: () => CustomNoData(
            widget: SvgPicture.asset(
              AssetPaths.emptyCartIcon,
              width: 50.sp,
              height: 50.sp,
            ),
            title: LocaleKeys.empty_cart.tr(),
          ),
          loading: () => Center(
              child: CircularProgressIndicator(
            color: ColorsManager.blackGray,
          )),
          success: (cartItems) {
            if (cartItems.isEmpty) {
              return CustomNoData(
                description: LocaleKeys.empty_cart_description.tr(),
                widget: SvgPicture.asset(
                    color: ColorsManager.darkCharcoal,
                    width: 50.sp,
                    height: 50.sp,
                    AssetPaths.emptyCartIcon),
                title: LocaleKeys.empty_cart.tr(),
              );
            }

            final subtotal = cartItems.fold(
                0.0, (sum, item) => sum + (item.price * item.quantity));
            final tax = subtotal * 0.1;
            final total = subtotal + tax;

            return Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: CartListView(
                      cartItems: cartItems,
                    ),
                  ),
                  CartSummary(subtotal: subtotal, tax: tax, total: total),
                ],
              ),
            );
          },
          error: (error) => const SizedBox.shrink(),
        );
      },
    );
  }
}
