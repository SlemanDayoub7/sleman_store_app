import 'package:flutter/material.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? color;
  final TextAlign? align;
  final int? maxLines;
  final TextOverflow? overflow;

  const CustomText({
    required this.text,
    this.style,
    this.color,
    this.align = TextAlign.start,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(color: color) ??
          TextStyles.b1Regular.copyWith(color: color),
      textAlign: align ?? TextAlign.end,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
