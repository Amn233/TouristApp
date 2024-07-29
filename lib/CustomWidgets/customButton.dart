import 'package:flutter/material.dart';
import 'package:touristapp/Resources/resource.dart';
class AppButton extends StatefulWidget {
  String? text;
  VoidCallback onPressed;
  Color? color;
  double? width;
  double? borderRadius;
  double? height;
  FontWeight? fontWeight;
  double? fontSize;
  Color? textColor;
  Color? borderColor;
  AppButton(
      {Key? key,
        this.text,
        required this.onPressed,
        required this.color,
        required this.width,
        this.borderRadius,
        this.height,
        this.fontWeight,
        this.fontSize,
        this.textColor,
        this.borderColor})
      : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height ?? Size.height * 0.06,
        width: widget.width ?? Size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(
              color: widget.borderColor ?? Colors.transparent, width: 1.2),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10.0),
        ),
        child: Text(
          widget.text ?? "",
          style: TextStyle(
              color: widget.textColor ?? Resource.colors.whiteColor,
              fontSize: Size.width > 500
                  ? Size.width * 0.03
                  : widget.fontSize ?? Size.width * 0.036),
        ),
      ),
    );
  }
}