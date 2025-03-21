import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/theming/base_shimmer.dart';
import 'package:sleman_store_app/core/theming/colors.dart';

class CategoriesShimmerLoading extends StatelessWidget {
  const CategoriesShimmerLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return BaseShimmer(
              widget: Container(
                width: 70.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: ColorsManager.white,
                    borderRadius: BorderRadius.circular(10.sp)),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return horizontalSpace(10.w);
          },
          itemCount: 5),
    );
  }
}
