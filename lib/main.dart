import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sleman_store_app/core/localization/localization_service.dart';
import 'package:sleman_store_app/core/routing/app_router.dart';
import 'package:sleman_store_app/store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalizationService.initLocalization();

  runApp(EasyLocalization(
    supportedLocales: [Locale('ar'), Locale('en')],
    path: 'assets/lang',
    fallbackLocale: Locale('ar'),
    child: StoreApp(
      appRouter: AppRouter(),
    ),
  ));
}
