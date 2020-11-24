import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProductImageAndText extends StatefulWidget {
  final ProductModel productModel;

  ProductImageAndText(this.productModel);

  @override
  _ProductImageAndTextState createState() => _ProductImageAndTextState();
}

class _ProductImageAndTextState extends State<ProductImageAndText> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.55,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: widget.productModel.listImagesUrl.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(appPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(80),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Image(
                    image: AssetImage(widget.productModel.listImagesUrl[index]),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: appPadding),
          child: Text(
            widget.productModel.name,
            style: TextStyle(color: darkGrey, fontSize: 28),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: appPadding, vertical: appPadding / 2),
          child: Text(
            'by ${widget.productModel.manufacturer}',
            style: TextStyle(
              color: darkGrey,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
