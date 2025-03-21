import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_state.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_cubit.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_state.dart';
import 'package:sleman_store_app/features/home/ui/widgets/categories/categories_list_view.dart';
import 'package:sleman_store_app/features/home/ui/widgets/categories/categories_shimmer_loading.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CategoriesSuccess ||
          current is CategoriesError ||
          current is HomeLoading,
      builder: (context, state) {
        return state.maybeWhen(
            loading: () => const CategoriesShimmerLoading(),
            categoriesSuccess: (categories) {
              return CategoriesListView(categories: categories);
            },
            categoriesError: (errorHandler) {
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }
}
