import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../services/news_services.dart';
import 'news_list.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder(this.category,{super.key});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    // NewsServices(dio: Dio()).getGeneralNews();
    future=NewsServices(widget.category).getGeneralNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot){
          if(snapshot.hasData){
            return NewsList(list:snapshot.data!);
          }
          else if(snapshot.hasError){
            return const SliverToBoxAdapter(child: Text("Sorry, data is not valid now, try again"));
          }
          else{
            return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(color: Colors.blue,)));
          }
        },);
  }
}
