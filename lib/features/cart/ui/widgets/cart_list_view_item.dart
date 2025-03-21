import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleman_store_app/core/constants/asset_paths.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_image.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/features/cart/data/models/cart_item.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_cubit.dart';

class CartListViewItem extends StatelessWidget {
  const CartListViewItem({
    super.key,
    required this.item,
  });

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: ColorsManager.softGray),
      ),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      height: 107.h,
      child: Row(
        spacing: 10.w,
        children: [
          Expanded(
            child: CustomImage(
              imageUrl: item.imageUrl,
              iconSize: 30.sp,
              height: 100.h,
              haveRadius: false,
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CustomText(
                        align: TextAlign.start,
                        maxLines: 2,
                        text: item.name,
                        style: TextStyles.b2Semibold,
                      ),
                    ),
                    horizontalSpace(40.w),
                    InkWell(
                        onTap: () {
                          context.read<CartCubit>().removeFromCart(item.id);
                        },
                        child: SvgPicture.asset(AssetPaths.clearIcon))
                  ],
                ),
                Spacer(),
                Row(
                  spacing: 10.w,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomText(
                        align: TextAlign.start,
                        text:
                            '\$${(item.price * item.quantity).toStringAsFixed(2)}',
                        style: TextStyles.b2Semibold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (item.quantity > 1) {
                          context.read<CartCubit>().updateCartItem(item, false);
                        } else {
                          context.read<CartCubit>().removeFromCart(item.id);
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: ColorsManager.softGray),
                        ),
                        child: Icon(
                          Icons.remove,
                          size: 20.sp,
                        ),
                      ),
                    ),
                    CustomText(
                      text: item.quantity.toString(),
                      style: TextStyles.b3Medium,
                    ),
                    InkWell(
                      onTap: () {
                        context.read<CartCubit>().updateCartItem(item, true);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: ColorsManager.softGray),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
