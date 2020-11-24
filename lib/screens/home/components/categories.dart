import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/data/data.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  int selectedCategoryIndex = 0;

  Widget _buildCategoryList(BuildContext context, int index){

    return GestureDetector(
      onTap: (){
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: appPadding),
        child: Text(categoryList[index],style: TextStyle(
          color: selectedCategoryIndex == index ? pink : darkGrey,
          fontSize: 22
        ),),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.05,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context,index){
          return _buildCategoryList(context, index);
        },
      ),
    );
  }
}
