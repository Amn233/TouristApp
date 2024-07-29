import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:touristapp/Resources/resource.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  var prefixIcon;
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
     this.prefixIcon,
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
    var appSize=MediaQuery.of(context).size;
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
cursorColor: Resource.colors.mainColor,
      style: TextStyle(
        color: Resource.colors.mainColor,
        fontSize: appSize.width*0.032,
          fontWeight: FontWeight.w400
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Resource.colors.mainColor,fontSize:appSize.width*0.032,fontWeight: FontWeight.w400 ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
          prefixIcon != null?
          SvgPicture.asset(prefixIcon, color: Resource.colors.mainColor):Image.asset("assets/svgs/Phone.png"),
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
          icon: Icon(suffixIcon, color: Resource.colors.mainColor),
          onPressed: onSuffixIconPressed,
        )
            : null,
        errorBorder: new OutlineInputBorder(
            borderSide: BorderSide(
                color: Resource.colors.whiteColor, width: 1),
            borderRadius: BorderRadius.circular(10.0)),
        focusedErrorBorder: new OutlineInputBorder(
            borderSide:
            BorderSide(color: Resource.colors.mainColor, width: 1),
            borderRadius: BorderRadius.circular(10.0)),
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: Resource.colors.whiteColor, width: 1.2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Resource.colors.mainColor, width: 1),
            borderRadius: BorderRadius.circular(10.0)),
        focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: Resource.colors.mainColor, width: 1),
            borderRadius: BorderRadius.circular(10.0)),
        filled: true,
        fillColor: Colors.white,
        errorStyle: TextStyle(fontSize: 7.0,color: Resource.colors.whiteColor),
      ),
    );
  }
}
