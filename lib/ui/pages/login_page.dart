import 'package:flutter/material.dart';
import 'package:tech_ecommerce/shared/theme.dart';
import 'package:tech_ecommerce/ui/widgets/custom_text_form_field.dart';
import 'package:tech_ecommerce/ui/widgets/custom_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 339.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image_background.png',
            ),
          ),
        ),
      );
    }

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

    Widget titleLogin() {
      return Text(
        'Login',
        style: primaryTextStyle.copyWith(fontSize: 18.sp, fontWeight: bold),
      );
    }

    Widget backgroundLogin() {
      return Container(
        width: double.infinity,
        height: 647.h,
        margin: EdgeInsets.only(
          top: 330,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 36.h,
          horizontal: 50.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: kBackgroundColor1,
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleLogin(),
              CustomTextFormField(
                image: 'assets/icon_email.png',
                title: 'Email',
                hintText: 'Your Email',
                margin: EdgeInsets.only(
                  top: 44,
                ),
                obscureText: false,
              ),
              CustomTextFormField(
                image: 'assets/icon_password.png',
                title: 'Password',
                hintText: 'Your Password',
                margin: EdgeInsets.only(
                  top: 44,
                ),
                obscureText: true,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
          Stack(
            children: [
              backgroundImage(),
              titleHeader(),
              backgroundLogin(),
            ],
          ),
        ],
      ),
    );
  }
}
