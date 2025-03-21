import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';

class CartSummary extends StatelessWidget {
  final double subtotal;
  final double tax;
  final double total;
  const CartSummary({
    super.key,
    required this.subtotal,
    required this.tax,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: Column(
        spacing: 20.h,
        children: [
          CartSummaryRow(
            title: LocaleKeys.subtotal.tr(),
            value: '\$${subtotal.toStringAsFixed(2)}',
          ),
          CartSummaryRow(
            title: LocaleKeys.shipping.tr() + " (%10)",
            value: '\$${tax.toStringAsFixed(2)}',
          ),
          CartSummaryRow(
            title: LocaleKeys.total.tr(),
            titleColor: ColorsManager.blackGray,
            valueTextStyles: TextStyles.b1Semibold,
            value: '\$${total.toStringAsFixed(2)}',
          ),
        ],
      ),
    );
  }
}

class CartSummaryRow extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final TextStyle? valueTextStyles;
  final String value;

  const CartSummaryRow({
    super.key,
    required this.title,
    required this.value,
    this.titleColor = ColorsManager.darkGray,
    this.valueTextStyles,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: title,
          style: TextStyles.b1Regular,
          color: titleColor,
        ),
        Spacer(),
        CustomText(
          text: value,
          style: valueTextStyles ?? TextStyles.b1Medium,
        ),
      ],
    );
  }
}
