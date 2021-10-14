import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_ecommerce/shared/theme.dart';
import 'package:tech_ecommerce/ui/widgets/navigation_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor2,
      drawer: NavigationDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor2,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Image.asset(
                'assets/icon_drawer.png',
                width: 22,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
    );
  }
}
