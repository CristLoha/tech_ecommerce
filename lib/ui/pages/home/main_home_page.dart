import 'package:flutter/material.dart';

import 'drawer_page/drawer_page.dart';
import 'drawer_page/home_page.dart';

class MainDrawerPage extends StatelessWidget {
  const MainDrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerPage(),
          HomePage(),
        ],
      ),
    );
  }
}
