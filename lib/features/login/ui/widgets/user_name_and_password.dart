import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/widgets/custom_text_form_field.dart';
import 'package:sleman_store_app/features/login/logic/cubit/login_cubit.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';

class UserNameAndPassword extends StatefulWidget {
  const UserNameAndPassword({super.key});

  @override
  State<UserNameAndPassword> createState() => _UserNameAndPasswordState();
}

bool isOpscureText = false;

class _UserNameAndPasswordState extends State<UserNameAndPassword> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        spacing: 30.h,
        children: [
          CustomTextFormField(
              controller: context.read<LoginCubit>().userNameController,
              hintText: LocaleKeys.username.tr(),
              validator: (p0) {
                if (p0 == null) return LocaleKeys.name_error.tr();
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
              controller: context.read<LoginCubit>().passwordController,
              hintText: LocaleKeys.password.tr(),
              validator: (p0) {
                if (p0 == null || p0.length < 6)
                  return LocaleKeys.password_not_valid.tr();
              }),
        ],
      ),
    );
  }
}
