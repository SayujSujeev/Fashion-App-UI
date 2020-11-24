import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/data/data.dart';
import 'package:fashion_app/models/product_model.dart';
import 'package:fashion_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  Widget _buildProducts(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    ProductModel productModel = productList[index];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsScreen(productModel: productModel),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(appPadding),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(80),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Image(
                    height: size.height * 0.41,
                    width: size.width * 0.6,
                    fit: BoxFit.cover,
                    image: AssetImage(productModel.imageUrl),
                  ),
                ),
                Text(
                  productModel.name,
                  style: TextStyle(
                    fontSize: 26,
                    color: darkGrey,
                  ),
                ),
                Text(
                  'by ${productModel.manufacturer}',
                  style: TextStyle(
                      fontSize: 20,
                      color: darkGrey,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Positioned(
              bottom: appPadding,
              right: 0,
              child: Container(
                height: size.height * 0.15,
                width: size.width * 0.15,
                decoration: BoxDecoration(
                  color: pink,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '\$${productModel.price}',
                    style: TextStyle(color: white, fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.53,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return _buildProducts(context, index);
        },
      ),
    );
  }
}
