import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_cubit.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_state.dart';

class CategoryDropdown extends StatelessWidget {
  final HomeCubit cubit;

  const CategoryDropdown({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10.h,
      children: [
        CustomText(
          text: LocaleKeys.categories.tr(),
          style: TextStyles.h4Semibold,
        ),
        BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (p, c) => c is CategoriesSuccess,
          builder: (context, state) {
            return DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: baseBorderRadius(),
                      borderSide: BorderSide(color: ColorsManager.softGray))),
              value: cubit.selectedCategory,
              items: cubit.categories
                  ?.map((category) => DropdownMenuItem(
                        value: category,
                        child: CustomText(
                            style: TextStyles.b1Semibold,
                            text: category == '*'
                                ? LocaleKeys.all.tr()
                                : category),
                      ))
                  .toList(),
              onChanged: (value) => cubit.setCategory(value!),
            );
          },
        ),
      ],
    );
  }
}
