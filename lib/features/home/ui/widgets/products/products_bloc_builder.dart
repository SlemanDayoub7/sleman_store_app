import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleman_store_app/core/constants/asset_paths.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/widgets/custom_no_data.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_cubit.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_state.dart';
import 'package:sleman_store_app/features/home/ui/widgets/products/products_grid_view.dart';
import 'package:sleman_store_app/features/home/ui/widgets/products/products_grid_view_shimmer_loading.dart';

class ProductsBlocBuilder extends StatelessWidget {
  const ProductsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is ProductsSuccess ||
          current is ProductsError ||
          current is HomeLoading ||
          current is SearchError,
      builder: (context, state) {
        return state.maybeWhen(
            searchError: () => CustomNoData(
                  topPadding: 200.sp,
                  title: LocaleKeys.there_is_no_data_to_display.tr(),
                  description: LocaleKeys.please_pull_down_to_refresh.tr(),
                  widget: SvgPicture.asset(
                    AssetPaths.searchIcon,
                    width: 50.sp,
                    height: 50.sp,
                  ),
                ),
            loading: () => const ProductsGridViewShimmerLoading(),
            productsSuccess: (products) {
              return ProductsGridView(products: products);
            },
            productsError: (errorHandler) => CustomNoData(
                  topPadding: 200.sp,
                  title: LocaleKeys.there_is_no_data_to_display.tr(),
                  description: LocaleKeys.please_pull_down_to_refresh.tr(),
                  widget: SvgPicture.asset(
                    AssetPaths.searchIcon,
                    width: 50.sp,
                    height: 50.sp,
                  ),
                ),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }
}
