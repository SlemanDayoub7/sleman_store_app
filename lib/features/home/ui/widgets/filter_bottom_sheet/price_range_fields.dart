import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/core/widgets/custom_text_form_field.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_cubit.dart';

class PriceRangeFields extends StatelessWidget {
  final HomeCubit cubit;

  const PriceRangeFields({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20.w,
      children: [
        Expanded(
          child: Column(
            children: [
              CustomText(
                text: LocaleKeys.min_price.tr(),
                style: TextStyles.b1Semibold,
              ),
              verticalSpace(10.h),
              CustomTextFormField(
                controller:
                    TextEditingController(text: cubit.minPrice?.toString()),
                keyboardType: TextInputType.number,
                onChanged: (v) =>
                    cubit.setPriceRange(double.tryParse(v!), cubit.minPrice),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              CustomText(
                text: LocaleKeys.max_price.tr(),
                style: TextStyles.b1Semibold,
              ),
              verticalSpace(10.h),
              CustomTextFormField(
                controller:
                    TextEditingController(text: cubit.maxPrice?.toString()),
                keyboardType: TextInputType.number,
                onChanged: (v) =>
                    cubit.setPriceRange(cubit.minPrice, double.tryParse(v!)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
