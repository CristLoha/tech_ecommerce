import 'package:flutter/material.dart';
import 'package:tech_ecommerce/shared/theme.dart';
import 'package:tech_ecommerce/ui/widgets/custom_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleHeader() {
      return Container(
        margin: EdgeInsets.only(
          top: 99.h,
          left: 50.w,
        ),
        child: CustomTitle(
          title: 'Welcome\nback',
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [titleHeader()],
      ),
    );
  }
}
