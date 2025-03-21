import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_cubit.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_state.dart';

class CategoriesListView extends StatelessWidget {
  final List<String> categories;
  final List<IconData>? icons;
  final bool isGrid;
  final int crossAxisCount;
  final double childAspectRatio;
  final Color? backgroundColor;
  final Color? selectedColor;
  final Color? textColor;
  final Color? selectedTextColor;
  final double borderRadius;
  final TextStyle? textStyle;
  final Axis scrollDirection;

  const CategoriesListView({
    Key? key,
    required this.categories,
    this.isGrid = false,
    this.crossAxisCount = 2,
    this.childAspectRatio = 3,
    this.backgroundColor = ColorsManager.white,
    this.selectedColor = ColorsManager.blackGray,
    this.textColor = ColorsManager.blackGray,
    this.selectedTextColor = ColorsManager.white,
    this.borderRadius = 10,
    this.textStyle,
    this.scrollDirection = Axis.horizontal,
    this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Container(
          height: 50.h,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return horizontalSpace(10.h);
            },
            scrollDirection: scrollDirection,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              final isSelected =
                  category == context.read<HomeCubit>().selectedCategory;

              return ChoiceChip(
                label: Row(
                  children: [
                    if (icons != null)
                      Icon(
                        icons![index],
                        color: isSelected
                            ? ColorsManager.white
                            : ColorsManager.blackGray,
                      ),
                    Text(
                      category == '*' ? LocaleKeys.all.tr() : category,
                      style: TextStyles.b1Medium.copyWith(
                        color: isSelected ? selectedTextColor : textColor,
                      ),
                    ),
                  ],
                ),
                checkmarkColor: ColorsManager.white,
                selected: isSelected,
                onSelected: (selected) {
                  context.read<HomeCubit>().setCategory(category);
                },
                backgroundColor: backgroundColor,
                selectedColor: selectedColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
