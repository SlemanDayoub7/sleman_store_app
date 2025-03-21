import 'package:dio/dio.dart';
import 'package:sleman_store_app/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sleman_store_app/features/home/data/models/product.dart';
import 'package:sleman_store_app/features/login/data/models/login_request_body.dart';
import 'package:sleman_store_app/features/login/data/models/login_response.dart';
import 'package:sleman_store_app/features/profile/data/models/user.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
  @GET(ApiConstants.products)
  Future<List<Product>> getProducts();
  @GET(ApiConstants.categories)
  Future<List<String>> getCategories();
  @GET(ApiConstants.profile)
  Future<User> getProfile();
}
