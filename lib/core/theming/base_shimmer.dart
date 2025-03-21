import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sleman_store_app/core/theming/colors.dart';

class BaseShimmer extends StatelessWidget {
  final Widget widget;
  const BaseShimmer({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: widget,
        baseColor: ColorsManager.softGray,
        highlightColor: ColorsManager.mediumLightGray);
  }
}
