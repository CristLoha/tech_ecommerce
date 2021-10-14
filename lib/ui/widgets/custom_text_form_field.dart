import 'package:flutter/material.dart';
import 'package:tech_ecommerce/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final EdgeInsets margin;
  final String image;
  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.hintText,
    this.obscureText = false,
    required this.margin,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 24.w,
              ),
              SizedBox(
                width: 11,
              ),
              Text(
                title,
                style: greyTextStyle.copyWith(
                  fontSize: 15.sp,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 9,
          ),
          TextFormField(
            obscureText: obscureText,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: hintText,
              // suffixText: 'Show',
              // suffixStyle:
              //     blueTextStyle.copyWith(fontWeight: semiBold, fontSize: 15.sp),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kGreyColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
