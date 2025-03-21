import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/theming/base_shimmer.dart';
import 'package:sleman_store_app/core/theming/colors.dart';

class CustomImage extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final bool? haveRadius;
  final double? iconSize;
  const CustomImage(
      {super.key,
      required this.imageUrl,
      this.height,
      this.width,
      this.haveRadius = true,
      this.iconSize});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      placeholder: (context, url) {
        return BaseShimmer(
          widget: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: !haveRadius!
                    ? null
                    : BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r))),
            width: double.infinity,
            height: height,
          ),
        );
      },
      errorWidget: (context, url, error) {
        return Container(
          width: width,
          decoration: BoxDecoration(
              color: ColorsManager.softGray,
              borderRadius: !haveRadius!
                  ? null
                  : BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r))),
          child: Icon(
            Icons.image,
            size: iconSize,
          ),
        );
      },
    );
  }
}
