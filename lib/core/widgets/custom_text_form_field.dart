import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?)? validator;
  final Function(String?)? onChanged;
  const CustomTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    this.validator,
    this.onChanged,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.blackGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.softGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintStyle: hintStyle ?? TextStyles.b1Medium,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? ColorsManager.white,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.b1Medium,
      validator: (value) {
        return validator!(value);
      },
    );
  }
}
