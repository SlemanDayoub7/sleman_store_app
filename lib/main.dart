import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/constants/asset_paths.dart';
import 'package:sleman_store_app/core/constants/shared_pref_keys.dart';
import 'package:sleman_store_app/core/di/dependency_injection.dart';
import 'package:sleman_store_app/core/helpers/extensions.dart';
import 'package:sleman_store_app/core/helpers/shared_pref_helper.dart';
import 'package:sleman_store_app/core/localization/localization_service.dart';
import 'package:sleman_store_app/core/routing/app_router.dart';
import 'package:sleman_store_app/store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalizationService.initLocalization();
  await setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  Locale locale = Locale(await SharedPrefHelper.getLocale());
  runApp(EasyLocalization(
      supportedLocales: LocalizationService.supportedLocales,
      path: AssetPaths.translationsPath,
      fallbackLocale: LocalizationService.enLocale,
      startLocale: locale,
      child: StoreApp(
        appRouter: AppRouter(),
      )));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
