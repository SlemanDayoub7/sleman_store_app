import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:sleman_store_app/core/networking/api_service.dart';
import 'package:sleman_store_app/core/networking/dio_factory.dart';
import 'package:sleman_store_app/features/cart/data/repos/cart_repo.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:sleman_store_app/features/home/data/repos/home_repo.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_cubit.dart';
import 'package:sleman_store_app/features/profile/data/repos/profile_repo.dart';
import 'package:sleman_store_app/features/profile/logic/cubit/profile_cubit.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));

  // cart
  getIt.registerLazySingleton<CartRepo>(() => CartRepo());
  getIt.registerFactory<CartCubit>(() => CartCubit(getIt()));

  //profile
  getIt.registerLazySingleton<ProfileRepo>(() => ProfileRepo(getIt()));
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt()));
}
