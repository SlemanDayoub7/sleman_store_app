import 'package:sleman_store_app/core/networking/api_error_handler.dart';
import 'package:sleman_store_app/core/networking/api_result.dart';
import 'package:sleman_store_app/core/networking/api_service.dart';
import 'package:sleman_store_app/features/home/data/models/product.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<List<Product>>> getProducts() async {
    try {
      final response = await _apiService.getProducts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<String>>> getCategories() async {
    try {
      final response = await _apiService.getCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
