import 'package:flutter/material.dart';

import 'package:tech_ecommerce/shared/theme.dart';
import 'package:tech_ecommerce/ui/widgets/custom_button.dart';
import 'package:tech_ecommerce/ui/widgets/custom_title.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget startedButton() {
      return CustomButton(
        title: 'Get started',
        onPressed: () {
          Navigator.pushNamed(context, '/login-page');
        },
        colorButton: kBackgroundColor1,
        textStyle: blueTextStyle.copyWith(
          fontSize: 20,
          fontWeight: bold,
        ),
        margin: EdgeInsets.only(top: 0),
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 70,
                      left: 51,
                    ),
                    child: CustomTitle(
                      title: 'Find your\nGadget',
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 190,
                        bottom: 18,
                      ),
                      width: 393,
                      height: 422,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/image1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            startedButton(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
