import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sleman_store_app/core/networking/api_error_handler.dart';
import 'package:sleman_store_app/features/home/data/models/product.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  // Loading state for both products and categories
  const factory HomeState.loading() = HomeLoading;
// Error state for general errors (e.g., during parallel loading)
  const factory HomeState.error(ErrorHandler errorHandler) = _Error;
  const factory HomeState.productsSuccess(List<Product> products) =
      ProductsSuccess;
  const factory HomeState.productsError(ErrorHandler errorHandler) =
      ProductsError;
  const factory HomeState.categoriesSuccess(List<String> categories) =
      CategoriesSuccess;
  const factory HomeState.categoriesError(ErrorHandler errorHandler) =
      CategoriesError;
  const factory HomeState.searchError() = SearchError;
}
