import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/screens/home/components/categories.dart';
import 'package:fashion_app/screens/home/components/header_text.dart';
import 'package:fashion_app/screens/home/components/products.dart';
import 'package:fashion_app/screens/home/components/search_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIconIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: appPadding),
            child: Icon(
              Icons.notifications_rounded,
              color: darkGrey,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderText(),
            SearchBox(),
            Categories(),
            Products(),
          ],
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: selectedIconIndex,
        buttonBackgroundColor: white,
        height: 60,
        color: white,
        onTap: (index){
          setState(() {
            selectedIconIndex = index;
          });
        },
        animationDuration: Duration(
          milliseconds: 200
        ),
        items: [
          Icon(
            Icons.home_outlined,
            size: 30,
            color: selectedIconIndex == 0 ? pink : darkGrey,
          ),
          Icon(
            Icons.favorite_border_rounded,
            size: 30,
            color: selectedIconIndex == 1 ? pink : darkGrey,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            size: 30,
            color: selectedIconIndex == 2 ? pink : darkGrey,
          ),
          Icon(
            Icons.person_outline,
            size: 30,
            color: selectedIconIndex == 3 ? pink : darkGrey,
          ),
        ],
      ),

    );
  }
}
