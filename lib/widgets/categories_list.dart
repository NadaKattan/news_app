import 'package:flutter/material.dart';
import 'category_card.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});
  final List<CategoryModel> categories=[
    CategoryModel(categoryName: "entertainment",image: "entertainment.jpg"),
    CategoryModel(categoryName: "business",image: "business.jpg"),
    CategoryModel(categoryName: "sports",image: "sports.jpg"),
    CategoryModel(categoryName: "technology",image: "technology.jpg"),
    CategoryModel(categoryName: "science",image: "science.jpg"),
    CategoryModel(categoryName: "health",image: "health.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(
          categoryName: categories[index].categoryName,
          image: categories[index].image,
        ),
        itemCount: categories.length,
      ),
    );
  }
}
class CategoryModel{
  String image;
  String categoryName;
  CategoryModel({required this.image,required this.categoryName});
}
