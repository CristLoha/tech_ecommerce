import 'package:flutter/material.dart';
import 'package:tech_ecommerce/shared/theme.dart';
import 'package:tech_ecommerce/ui/widgets/custom_categories.dart';

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
            horizontal: 21,
            vertical: 18,
          ),
          decoration: BoxDecoration(
            color: kBackgroundColor2,
            border: Border.all(
              width: 2,
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
                width: 12,
              ),
              Text(
                'Search',
                style: greyTextStyle.copyWith(
                  fontSize: 17,
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
          horizontal: 54,
          vertical: 68,
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
                      width: 22,
                    ),
                  ),
            SizedBox(
              width: 26.4,
            ),
            searchBar(),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: 56,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 54,
              ),
              CustomCategories(
                title: 'Wearable',
                textStyle: blueTextStyle.copyWith(
                  fontSize: 17,
                  fontWeight: semiBold,
                ),
                color: kPrimaryColor,
              ),
              SizedBox(
                width: 24,
              ),
              CustomCategories(
                title: 'Laptops',
                textStyle:
                    greyTextStyle.copyWith(fontSize: 17, fontWeight: semiBold),
                color: kTransparentColor,
              ),
              SizedBox(
                width: 24,
              ),
              CustomCategories(
                title: 'Phones',
                textStyle: greyTextStyle.copyWith(
                  fontSize: 17,
                  fontWeight: semiBold,
                ),
                color: kTransparentColor,
              ),
              SizedBox(
                width: 24,
              ),
              CustomCategories(
                title: 'Drones',
                textStyle: greyTextStyle.copyWith(
                  fontSize: 17,
                  fontWeight: semiBold,
                ),
                color: kTransparentColor,
              ),
              SizedBox(
                width: 54,
              ),
            ],
          ),
        ),
      );
    }

    Widget title() {
      return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 50),
              child: Text(
                'Order online\ncollect in store',
                style: primaryTextStyle.copyWith(
                  fontSize: 34,
                  fontWeight: bold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container();
    }

    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      color: kBackgroundColor2,
      child: ListView(
        children: [
          header(),
          title(),
          categories(),
        ],
      ),
    );
  }
}
