import 'package:sleman_store_app/core/networking/api_error_handler.dart';
import 'package:sleman_store_app/core/networking/api_result.dart';
import 'package:sleman_store_app/core/networking/api_service.dart';

import 'package:sleman_store_app/features/profile/data/models/user.dart';

class ProfileRepo {
  final ApiService _apiService;
  ProfileRepo(this._apiService);
  Future<ApiResult<User>> getProfile() async {
    try {
      final response = await _apiService.getProfile();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
