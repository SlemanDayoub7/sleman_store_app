import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/extensions.dart';
import 'package:sleman_store_app/core/routing/routes.dart';
import 'package:sleman_store_app/core/widgets/custom_image.dart';
import 'package:sleman_store_app/features/home/data/models/product.dart';
import 'package:sleman_store_app/features/home/ui/widgets/products/product_grid_view_item/add_to_cart_icon.dart';
import 'package:sleman_store_app/features/home/ui/widgets/products/product_grid_view_item/total_and_price.dart';

class ProductsGridViewItem extends StatelessWidget {
  const ProductsGridViewItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.productDetail, arguments: product);
      },
      child: Container(
        height: 240.h,
        width: 161.w,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: CustomImage(
                height: 170.h,
                imageUrl: product.image,
              ),
            ),
            TitleAndPrice(
              title: product.title,
              price: product.price.toString(),
            ),
            AddToCartIcon(product: product),
          ],
        ),
      ),
    );
  }
}
