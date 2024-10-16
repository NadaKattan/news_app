import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String categoryName;
  String image;
  CategoryCard({super.key, required this.categoryName, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      margin: EdgeInsetsDirectional.only(end: 16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/$image"),
          fit: BoxFit.fill,
        ),
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(categoryName,style: TextStyle(color: Colors.white),),),
    );
  }
}
