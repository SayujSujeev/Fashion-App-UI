import 'package:fashion_app/constants/constants.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey Emma,',
              style: TextStyle(
                fontSize: 30,
                color: darkGrey,
              ),
            ),
            SizedBox(height: appPadding / 2,),
            Text(
              'All new fashion style in one place!',
              style: TextStyle(
                fontSize: 18,
                color: darkGrey,
                fontWeight: FontWeight.w300
              ),
            ),
          ],
        ),
      ),
    );
  }
}
