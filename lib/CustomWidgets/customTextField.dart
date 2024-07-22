import 'package:flutter/material.dart';
import 'package:touristapp/Resources/resource.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final VoidCallback? onSuffixIconPressed;
  final Color? hintTextColor;
  final Color? prefixIconColor;
  final Color? suffixIconColor;

  CustomTextField({
    required this.hintText,
    required this.controller,
    required this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
    this.validator,
    required this.keyboardType,
    this.onSuffixIconPressed,
    this.hintTextColor,
    this.prefixIconColor,
    this.suffixIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor ?? Colors.grey),
        prefixIcon: Icon(prefixIcon, color: prefixIconColor ?? Colors.grey),
        suffixIcon: suffixIcon != null
            ? IconButton(
          icon: Icon(suffixIcon, color: suffixIconColor ?? Colors.grey),
          onPressed: onSuffixIconPressed,
        )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: Colors.white,
        errorStyle: TextStyle(fontSize: 15.0,color: Resource.colors.whiteColor),
      ),
    );
  }
}
