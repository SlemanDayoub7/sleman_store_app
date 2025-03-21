import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/theming/base_shimmer.dart';
import 'package:sleman_store_app/core/theming/colors.dart';

class ProductsGridViewShimmerLoading extends StatelessWidget {
  const ProductsGridViewShimmerLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 19.h,
          mainAxisSpacing: 19.h),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 240.h,
          width: 161.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BaseShimmer(
                widget: Container(
                  decoration: BoxDecoration(
                      color: ColorsManager.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r))),
                  height: 174.h,
                ),
              ),
              BaseShimmer(
                widget: Container(
                  height: 10.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                      color: ColorsManager.white,
                      borderRadius: BorderRadius.circular(10.r)),
                ),
              ),
              BaseShimmer(
                widget: Container(
                  height: 10.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: ColorsManager.white,
                      borderRadius: BorderRadius.circular(10.r)),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
