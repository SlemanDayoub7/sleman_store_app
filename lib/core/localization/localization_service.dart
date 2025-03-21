import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sleman_store_app/core/helpers/shared_pref_helper.dart';

class LocalizationService {
  static const enLocale = Locale('en');
  static const arLocale = Locale('ar');

  static List<Locale> get supportedLocales => [enLocale, arLocale];
  static Future<void> initLocalization() async {
    await EasyLocalization.ensureInitialized();
  }

  static void changeLocale(BuildContext context, Locale locale) async {
    await SharedPrefHelper.saveLocale(locale);
    context.setLocale(locale);
  }
}
