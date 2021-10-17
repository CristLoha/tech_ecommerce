import 'package:flutter/material.dart';

class CustomCategories extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final Color color;
  const CustomCategories({
    Key? key,
    required this.title,
    required this.textStyle,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            title,
            style: textStyle,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          width: 87,
          height: 3,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(18),
          ),
        )
      ],
    );
  }
}
