import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox verticalSpace(double height) => SizedBox(
      height: height.h,
    );

SizedBox horizontalSpace(double width) => SizedBox(
      width: width.w,
    );
EdgeInsets basePadding() =>
    EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h);
BorderRadius baseBorderRadius() => BorderRadius.circular(10.r);
