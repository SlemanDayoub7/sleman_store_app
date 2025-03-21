import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/theming/base_shimmer.dart';
import 'package:sleman_store_app/core/theming/colors.dart';

class ProfileShimmerLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseShimmer(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
                width: 160.w,
                height: 160.h,
                child: CircleAvatar(
                  backgroundColor: ColorsManager.softGray,
                )),
          ),
          SizedBox(height: 15.h),
          Center(
            child: Container(
              width: 120.w,
              height: 20.h,
              color: ColorsManager.softGray,
            ),
          ),
          SizedBox(height: 5.h),
          Center(
            child: Container(
              width: 80.w,
              height: 15.h,
              color: ColorsManager.softGray,
            ),
          ),
          SizedBox(height: 20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [...List.generate(4, (i) => ShimmerInfoSection())],
          ),
        ],
      ),
    );
  }
}

class ShimmerInfoSection extends StatelessWidget {
  const ShimmerInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12.r,
            backgroundColor: ColorsManager.softGray,
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100.w,
                height: 15.h,
                color: ColorsManager.softGray,
              ),
              SizedBox(height: 5.h),
              Container(
                width: 150.w,
                height: 15.h,
                color: ColorsManager.softGray,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
