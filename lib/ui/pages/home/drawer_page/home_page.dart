import 'package:flutter/material.dart';
import 'package:tech_ecommerce/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    Widget searchBar() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 21.w,
            vertical: 18,
          ),
          decoration: BoxDecoration(
            color: kBackgroundColor2,
            border: Border.all(
              width: 2.w,
              color: kGreyColor2,
            ),
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.search,
                ),
              ),
              SizedBox(
                width: 12.h,
              ),
              Text(
                'Search',
                style: greyTextStyle.copyWith(
                  fontSize: 17.sp,
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 54.h,
          vertical: 68.w,
        ),
        child: Row(
          children: [
            isDrawerOpen
                ? IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      setState(() {
                        xOffset = 0;
                        yOffset = 0;
                        scaleFactor = 1;
                        isDrawerOpen = false;
                      });
                    },
                  )
                : IconButton(
                    onPressed: () {
                      setState(() {
                        xOffset = 230;
                        yOffset = 150;
                        scaleFactor = 0.6;
                        isDrawerOpen = true;
                      });
                    },
                    icon: Image.asset(
                      'assets/icon_drawer.png',
                      width: 22.w,
                    ),
                  ),
            SizedBox(
              width: 26.4.w,
            ),
            searchBar(),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        child: Row(
          children: [
            Container(
              child: Text('Wearable'),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          margin: EdgeInsets.only(
            left: 50.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order online\ncollect in store',
                style: primaryTextStyle.copyWith(
                  fontSize: 34.sp,
                  fontWeight: bold,
                ),
              ),
              categories()
            ],
          ),
        ),
      );
    }

    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      color: kBackgroundColor2,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            content(),
          ],
        ),
      ),
    );
  }
}
