import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/models/product_model.dart';
import 'package:fashion_app/screens/details/components/product_buttons.dart';
import 'package:fashion_app/screens/details/components/product_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DetailsScreen extends StatefulWidget {
  final ProductModel productModel;

  const DetailsScreen({Key key, this.productModel}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.only(left: appPadding / 2),
            child: Icon(
              Icons.arrow_back_rounded,
              color: darkGrey,
              size: 30,
            ),
          ),
        ),
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
          children: [
            ProductImageAndText(widget.productModel),
            ProductButtons(widget.productModel),
          ],
        ),
      ),
    );
  }
}
