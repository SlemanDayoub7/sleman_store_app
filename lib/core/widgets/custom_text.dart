import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color? color;
  final TextAlign? align;
  final int? maxLines;
  final TextOverflow? overflow;

  const CustomText({
    required this.text,
    required this.style,
    this.color,
    this.align,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(color: color),
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
