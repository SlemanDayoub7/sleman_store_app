import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/app_regex.dart';
import 'package:sleman_store_app/core/widgets/custom_button.dart';
import 'package:sleman_store_app/core/widgets/custom_text_form_field.dart';
import 'package:sleman_store_app/generated/codegen_loader.g.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

final GlobalKey<FormState> formKey = GlobalKey<FormState>();

final TextEditingController emailController = TextEditingController();

final TextEditingController passwordController = TextEditingController();

bool isOpscureText = false;

class _EmailAndPasswordState extends State<EmailAndPassword> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 30.h,
        children: [
          CustomTextFormField(
              controller: emailController,
              hintText: LocaleKeys.email.tr(),
              validator: (p0) {
                if (p0 == null || !AppRegex.isEmailValid(p0))
                  return LocaleKeys.email_not_valid.tr();
              }),
          CustomTextFormField(
              suffixIcon: IconButton(
                  onPressed: () {
                    isOpscureText = !isOpscureText;
                    setState(() {});
                  },
                  icon: Icon(
                      isOpscureText ? Icons.visibility_off : Icons.visibility)),
              isObscureText: isOpscureText,
              controller: passwordController,
              hintText: LocaleKeys.password.tr(),
              validator: (p0) {
                if (p0 == null || !AppRegex.isPasswordValid(p0))
                  return LocaleKeys.password_not_valid.tr();
              }),
          CustomButton(
            onPressed: () {
              formKey.currentState!.validate();
            },
            text: LocaleKeys.login.tr(),
          ),
        ],
      ),
    );
  }
}
