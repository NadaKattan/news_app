import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_card.dart';
import 'package:news_app/widgets/news_list_builder.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Cloud",
              style: TextStyle(fontSize: 25, color: Colors.orange),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesList()),
            SliverToBoxAdapter(child:SizedBox(height: 30,)),
            NewsListViewBuilder(),
          ],
        ),
      )
    );
  }
}
