// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/features/home/data/models/product.dart';
import 'package:sleman_store_app/features/home/ui/widgets/products/product_grid_view_item/products_grid_view_item.dart';

class ProductsGridView extends StatelessWidget {
  List<Product> products;
  ProductsGridView({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.75,
        crossAxisSpacing: 19.h,
        mainAxisSpacing: 19.h,
        crossAxisCount: 2,
      ),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        var product = products[index];
        return ProductsGridViewItem(product: product);
      },
    );
  }
}
