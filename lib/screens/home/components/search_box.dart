import 'package:fashion_app/constants/constants.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //it will return the size of the screen
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        bottom: appPadding,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: appPadding / 2),
        padding: EdgeInsets.symmetric(horizontal: appPadding),
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: white,
          boxShadow: [BoxShadow(
            color: darkGrey.withOpacity(0.4),
            offset: Offset(10,10),
            blurRadius: 10,
          )]
        ),
        child: TextField(
          cursorColor: darkGrey,
          decoration: InputDecoration(
              hintText: 'Search here...',
              icon: Icon(Icons.search_rounded),
              hintStyle: TextStyle(
                color: darkGrey.withOpacity(0.6),
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
