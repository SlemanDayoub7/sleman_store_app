import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleman_store_app/core/constants/asset_paths.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/features/cart/data/models/cart_item.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:sleman_store_app/features/cart/ui/widgets/cart_list_view_item.dart';

class CartListView extends StatelessWidget {
  final List<CartItem> cartItems;

  const CartListView({
    super.key,
    required this.cartItems,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return verticalSpace(20.h);
      },
      shrinkWrap: true,
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        CartItem item = cartItems[index];
        return Dismissible(
          key: Key(item.id.toString()),
          direction: DismissDirection.endToStart,
          background: Container(
            color: ColorsManager.errorRed,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 20.w),
            child: SvgPicture.asset(
              AssetPaths.clearIcon,
              width: 30.w,
              height: 30.h,
              color: ColorsManager.white,
            ),
          ),
          onDismissed: (direction) {
            context.read<CartCubit>().removeFromCart(item.id);
          },
          child: CartListViewItem(item: item),
        );
      },
    );
  }
}
