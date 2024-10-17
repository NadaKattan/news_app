import 'package:flutter/material.dart';

import '../models/article_model.dart';
import 'news_card.dart';

class NewsList extends StatelessWidget {
  List<ArticleModel> list;
  NewsList({super.key,required this.list});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return NewsCard(title: list[index].title,image: list[index].image,subTitle: list[index].subTitle);
      },childCount: list.length),
    );;
  }
}
