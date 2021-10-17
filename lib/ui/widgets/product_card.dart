import 'package:flutter/material.dart';
import 'package:tech_ecommerce/shared/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kBackgroundColor1,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/image_content1.png',
            width: 157.21,
          ),
          Text(
            'Apple Watch',
            style: primaryTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Series 6 . Red',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 36,
          ),
          Text(
            '\$ 359',
            style: blueTextStyle.copyWith(
              fontSize: 17,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 39,
          ),
        ],
      ),
    );
  }
}
