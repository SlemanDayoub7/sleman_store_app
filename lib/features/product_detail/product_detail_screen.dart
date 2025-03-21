import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_button.dart';
import 'package:sleman_store_app/core/widgets/custom_image.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/core/widgets/custom_top_bar.dart';

import 'package:sleman_store_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_state.dart';
import 'package:sleman_store_app/features/home/data/models/product.dart';
import 'package:sleman_store_app/features/product_detail/ui/widgets/interactive_product_image.dart';
import 'package:sleman_store_app/features/product_detail/ui/widgets/price_and_add_to_cart_button.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  ProductDetailScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomTopBar(
              title: LocaleKeys.product_details.tr(),
              haveBackIcon: true,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 19.h, horizontal: 19.w),
                child: Column(
                  spacing: 10.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InteractiveProductImage(imageUrl: product.image),
                    CustomText(
                        overflow: TextOverflow.visible,
                        text: product.title,
                        style: TextStyles.h1Semibold),
                    CustomText(
                        overflow: TextOverflow.visible,
                        text: product.category,
                        style: TextStyles.h4Medium),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amberAccent,
                        ),
                        CustomText(text: '4.5', style: TextStyles.b1Medium),
                        CustomText(
                          text: '(30 reviews)',
                          style: TextStyles.b1Medium,
                          color: ColorsManager.darkGray,
                        )
                      ],
                    ),
                    CustomText(
                        overflow: TextOverflow.visible,
                        text: product.description,
                        color: ColorsManager.darkGray,
                        style: TextStyles.b1Regular),
                  ],
                ),
              ),
            ),
            PriceAndAddToCartButton(product: product)
          ],
        ),
      ),
    );
  }
}
