import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_cubit.dart';

class SortDropdown extends StatelessWidget {
  final HomeCubit cubit;

  const SortDropdown({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: LocaleKeys.sort_by.tr(),
          style: TextStyles.h4Semibold,
        ),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: baseBorderRadius(),
                  borderSide: BorderSide(color: ColorsManager.softGray))),
          value: cubit.sortOrder,
          items: [
            DropdownMenuItem(
                value: 'none', child: Text(LocaleKeys.default_sort.tr())),
            DropdownMenuItem(
                value: 'lowToHigh',
                child: Text(LocaleKeys.price_low_to_high.tr())),
            DropdownMenuItem(
                value: 'highToLow',
                child: Text(LocaleKeys.price_high_to_low.tr())),
          ],
          onChanged: (value) => cubit.setSortOrder(value!),
        ),
      ],
    );
  }
}
