import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProductButtons extends StatefulWidget {
  final ProductModel productModel;

  ProductButtons(this.productModel);

  @override
  _ProductButtonsState createState() => _ProductButtonsState();
}

class _ProductButtonsState extends State<ProductButtons> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Size',
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: appPadding),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: appPadding / 2,
                        vertical: appPadding / 2,
                      ),
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.productModel.size,
                            style: TextStyle(color: grey, fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: grey,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Color',
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: appPadding),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: appPadding / 2,
                        vertical: appPadding / 2,
                      ),
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.productModel.color,
                            style: TextStyle(color: grey, fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: grey,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: appPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(appPadding / 2),
                  child: Icon(
                    Icons.favorite,
                    size: 40,
                    color: grey,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: pink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: appPadding / 2,
                    horizontal: appPadding,
                  ),
                  child: Row(
                    children: [
                      Text('\$${widget.productModel.price}',style: TextStyle(
                        color: white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(width: size.width * 0.2,),
                      Icon(Icons.arrow_forward_rounded,color: white,size: 40,)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
