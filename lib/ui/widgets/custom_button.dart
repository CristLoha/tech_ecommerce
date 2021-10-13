import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ecommerce/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double widht;
  final double height;
  final Function() onPressed;
  final EdgeInsets margin;
  final Color colorButton;
  final TextStyle textStyle;
  const CustomButton({
    Key? key,
    required this.title,
    required this.widht,
    required this.height,
    required this.onPressed,
    required this.margin,
    required this.colorButton,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht.w,
      height: height.h,
      margin: margin,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: colorButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}
