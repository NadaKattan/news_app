import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../services/news_services.dart';
import 'news_card.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List<ArticleModel> list=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // NewsServices(dio: Dio()).getGeneralNews();
    getNews();
  }
  Future<void> getNews() async{
    list = await NewsServices(dio: Dio()).getGeneralNews();
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return list.isEmpty? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(color: Colors.blue,))): SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return NewsCard(title: list[index].title,image: list[index].image,subTitle: list[index].subTitle);
      },childCount: list.length),
    );
  }
}
