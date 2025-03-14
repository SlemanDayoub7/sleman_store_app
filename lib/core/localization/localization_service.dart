import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LocalizationService {
  static Future<void> initLocalization() async {
    await EasyLocalization.ensureInitialized();
  }

  static void changeLocale(BuildContext context, Locale locale) {
    context.setLocale(locale);
  }
}
