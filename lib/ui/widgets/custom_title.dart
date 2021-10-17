import 'package:flutter/material.dart';
import 'package:tech_ecommerce/shared/theme.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  const CustomTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: whiteTextStyle.copyWith(
        fontSize: 65,
        fontWeight: extraBold,
      ),
    );
  }
}
