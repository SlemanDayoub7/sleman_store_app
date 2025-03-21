import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/widgets/custom_text_form_field.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_cubit.dart';
import 'package:sleman_store_app/features/home/ui/widgets/filter_bottom_sheet/filter_bottom_sheet.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        Expanded(
          child: CustomTextFormField(
            hintText: LocaleKeys.search.tr(),
            validator: (p0) {},
            onChanged: (value) =>
                context.read<HomeCubit>().setSearchQuery(value ?? ''),
          ),
        ),
        GestureDetector(
          onTap: () => showBottomSheet(
            enableDrag: true,
            showDragHandle: true,
            backgroundColor: ColorsManager.softGray,
            constraints: BoxConstraints(maxHeight: 500.h),
            context: context,
            builder: (_) => FilterBottomSheet(),
          ),
          child: Container(
            width: 60.w,
            height: 60.h,
            decoration: BoxDecoration(
                color: ColorsManager.blackGray,
                borderRadius: baseBorderRadius()),
            child: Icon(
              Icons.filter_list,
              color: ColorsManager.white,
            ),
          ),
        )
      ],
    );
  }
}
