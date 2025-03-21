import 'package:flutter/material.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';

class TitleAndPrice extends StatelessWidget {
  final String title;
  final String price;
  const TitleAndPrice({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: title,
            style: TextStyles.b1Semibold,
          ),
          CustomText(
            text: price + r" $",
            style: TextStyles.b1Medium,
            color: ColorsManager.darkGray,
          ),
        ],
      ),
    );
  }
}
