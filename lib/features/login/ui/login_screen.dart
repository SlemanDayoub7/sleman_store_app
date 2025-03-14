import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/app_regex.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_button.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/core/widgets/custom_text_form_field.dart';
import 'package:sleman_store_app/features/login/ui/widgets/email_and_password.dart';
import 'package:sleman_store_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:sleman_store_app/generated/codegen_loader.g.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 30.h,
                children: [
                  CustomText(
                      text: LocaleKeys.login_title.tr(),
                      style: TextStyles.h2Semibold),
                  EmailAndPassword(),
                  TermsAndConditionsText()
                ],
              ))),
    );
  }
}
