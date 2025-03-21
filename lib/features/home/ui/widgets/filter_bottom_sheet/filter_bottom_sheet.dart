import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_cubit.dart';
import 'package:sleman_store_app/features/home/ui/widgets/filter_bottom_sheet/category_drop_down.dart';
import 'package:sleman_store_app/features/home/ui/widgets/filter_bottom_sheet/price_range_fields.dart';
import 'package:sleman_store_app/features/home/ui/widgets/filter_bottom_sheet/sort_drop_down.dart';

class FilterBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: basePadding(),
        child: ListView(
          children: [
            CustomText(
              align: TextAlign.center,
              text: LocaleKeys.filter.tr(),
              style: TextStyles.h2Semibold,
            ),
            verticalSpace(20.h),
            SortDropdown(cubit: cubit),
            verticalSpace(20.h),
            CategoryDropdown(cubit: cubit),
            verticalSpace(20.h),
            PriceRangeFields(cubit: cubit),
          ],
        ),
      ),
    );
  }
}
