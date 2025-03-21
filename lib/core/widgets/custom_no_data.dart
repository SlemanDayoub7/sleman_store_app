import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';

class CustomNoData extends StatelessWidget {
  final String? title;
  final String? description;
  final Widget? widget;
  final double? topPadding;
  const CustomNoData({
    super.key,
    this.title,
    this.widget,
    this.description,
    this.topPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding ?? 300.h),
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          widget ?? SizedBox.shrink(),
          CustomText(
              maxLines: 2,
              align: TextAlign.center,
              text: title ?? '',
              style: TextStyles.h4Semibold),
          CustomText(
            maxLines: 2,
            text: description ?? '',
            align: TextAlign.center,
          )
        ],
      ),
    );
  }
}
