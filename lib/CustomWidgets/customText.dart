import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color textColor;
  final double fontSize;
  final TextAlign textAlign;
  final String? fontFamily; // Make fontFamily nullable

  const CustomText({
    super.key,
    required this.title,
    required this.textColor,
    required this.fontSize,
    required this.textAlign,
    this.fontFamily, // Make fontFamily optional
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontFamily: fontFamily, // This will be null if not provided
      ),
    );
  }
}
