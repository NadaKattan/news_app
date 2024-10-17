import 'package:flutter/material.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  String categoryName;
  String image;
  CategoryCard({super.key, required this.categoryName, required this.image});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(CategoryView.routename,arguments: ScreenArguments(categoryName));
      },
      child: Container(
        height: 100,
        width: 150,
        margin: EdgeInsetsDirectional.only(end: 16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/$image"),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              Colors.transparent.withOpacity(0.9),
              BlendMode.dstATop,
            ),
          ),
          // color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text(categoryName,style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}
class ScreenArguments {
  final String categoryName;
  ScreenArguments(this.categoryName);
}
