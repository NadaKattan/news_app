import 'dart:ui';

import 'package:flutter/material.dart';

import 'category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(
          categoryName: "Business",
          image: "technology.jpeg",
        ),
        itemCount: 10,
      ),
    );
  }
}
