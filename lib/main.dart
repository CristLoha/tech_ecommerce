import 'package:flutter/material.dart';
import 'package:tech_ecommerce/ui/pages/home/main_home_page.dart';
import 'package:tech_ecommerce/ui/pages/login_page.dart';
import 'package:tech_ecommerce/ui/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login-page': (context) => LoginPage(),
        '/home-page': (context) => MainDrawerPage(),
      },
    );
  }
}
