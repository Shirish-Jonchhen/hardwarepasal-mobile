import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({
    super.key,
    required this.texts,
    this.textAlign,
    this.onTap,
    this.overflow,
    this.maxLines,
    this.textStyle,
  });

  final String texts;
  final TextStyle? textStyle;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLines;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        texts,
        overflow: overflow,
        textAlign: textAlign,
        maxLines: maxLines,
          style: textStyle),
    );
  }
}
