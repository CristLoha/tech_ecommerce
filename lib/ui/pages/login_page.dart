import 'package:flutter/material.dart';
import 'package:tech_ecommerce/shared/theme.dart';
import 'package:tech_ecommerce/ui/widgets/custom_button.dart';
import 'package:tech_ecommerce/ui/widgets/custom_text_form_field.dart';
import 'package:tech_ecommerce/ui/widgets/custom_title.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 339,
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
          top: 99,
          left: 50,
        ),
        child: CustomTitle(
          title: 'Welcome\nback',
        ),
      );
    }

    Widget titleLogin() {
      return Text(
        'Login',
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: bold,
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        height: 647,
        margin: EdgeInsets.only(
          top: 330,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 36,
          horizontal: 50,
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
              SizedBox(
                height: 24,
              ),
              Text(
                'Forgot passcode?',
                style: blueTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semiBold,
                ),
              ),
              Column(
                children: [
                  Center(
                    child: CustomButton(
                      title: 'Login',
                      onPressed: () {
                        Navigator.pushNamed(context, '/home-page');
                      },
                      margin: EdgeInsets.only(top: 62),
                      colorButton: kPrimaryColor,
                      textStyle: whiteTextStyle.copyWith(
                          fontSize: 20, fontWeight: semiBold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 19,
              ),
              Center(
                child: Text(
                  'Create account',
                  style: blueTextStyle.copyWith(
                    fontSize: 17,
                    fontWeight: semiBold,
                  ),
                ),
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
              content(),
            ],
          ),
        ],
      ),
    );
  }
}
