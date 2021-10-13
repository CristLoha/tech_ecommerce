import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tech_ecommerce/shared/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 70.h,
                        left: 51.w,
                      ),
                      child: Text(
                        'Find your\nGadget',
                        style: whiteTextStyle.copyWith(
                          fontSize: 65.sp,
                          fontWeight: extraBold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 220.h,
                      ),
                      child: Image.asset(
                        'assets/image1.png',
                        fit: BoxFit.contain,
                        width: 486.w,
                        height: 528.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 314.w,
              height: 70.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: kBackgroundColor1,
                ),
                child: Text(
                  'Get started',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 112.h,
            ),
          ],
        ),
      ),
    );
  }
}