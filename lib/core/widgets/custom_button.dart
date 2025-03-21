import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final String? text;
  final Color? color;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Border? border;
  final Widget? icon;
  final bool isLoading;
  final bool expandWidth;
  final bool isOutlined;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.child,
    this.text,
    this.color = ColorsManager.blackGray,
    this.textColor = ColorsManager.white,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.borderRadius,
    this.border,
    this.icon,
    this.isLoading = false,
    this.expandWidth = false,
    this.isOutlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: expandWidth ? double.infinity : width,
      height: height ?? 54.h,
      child: Material(
        color: isOutlined
            ? Colors.transparent
            : color ?? Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
        child: InkWell(
          onTap: isLoading ? null : onPressed,
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
          child: Container(
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: isOutlined
                  ? Border.all(
                      color: color ?? Theme.of(context).primaryColor,
                      width: 2,
                    )
                  : border,
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
            child: Center(
              child: _buildContent(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (isLoading) {
      return const SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
      );
    }

    if (child != null) return child!;

    if (text != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 8),
          ],
          CustomText(
              text: text!,
              style: TextStyles.b1Medium.copyWith(
                color: ColorsManager.white,
              ))
        ],
      );
    }

    return const SizedBox.shrink();
  }
}
