import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/generated/codegen_loader.g.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: LocaleKeys.by_logging_you_agree_to_our.tr() + ' ',
            style:
                TextStyles.b1Regular.copyWith(color: ColorsManager.blackGray),
          ),
          TextSpan(
            text: LocaleKeys.terms.tr() +
                ' ' +
                LocaleKeys.and.tr() +
                ' ' +
                LocaleKeys.conditions.tr() +
                ' ',
            style:
                TextStyles.b1Semibold.copyWith(color: ColorsManager.blackGray),
          ),
          TextSpan(
            text: LocaleKeys.and.tr() + '',
            style: TextStyles.b1Regular
                .copyWith(height: 1.5, color: ColorsManager.blackGray),
          ),
          TextSpan(
            text: LocaleKeys.privacy_policy.tr(),
            style:
                TextStyles.b1Semibold.copyWith(color: ColorsManager.blackGray),
          ),
        ],
      ),
    );
  }
}
