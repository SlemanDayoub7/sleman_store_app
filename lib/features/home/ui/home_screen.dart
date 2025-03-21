import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/widgets/custom_top_bar.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_cubit.dart';

import 'package:sleman_store_app/features/home/ui/widgets/categories/categories_bloc_builder.dart';

import 'package:sleman_store_app/features/home/ui/widgets/products/products_bloc_builder.dart';
import 'package:sleman_store_app/features/home/ui/widgets/search_and_filter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Padding(
        padding: basePadding(),
        child: Column(
          spacing: 10.h,
          children: [
            CustomTopBar(title: LocaleKeys.home.tr()),
            SearchAndFilter(),
            CategoriesBlocBuilder(),
            Expanded(
                child: RefreshIndicator(
              backgroundColor: ColorsManager.lightGray,
              color: ColorsManager.blackGray,
              onRefresh: () async {
                await context.read<HomeCubit>().initialize();
              },
              child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          minHeight: MediaQuery.of(context).size.height,
                        ),
                        child: ProductsBlocBuilder(),
                      )
                    ],
                  )),
            ))
          ],
        ),
      )),
    );
  }
}
