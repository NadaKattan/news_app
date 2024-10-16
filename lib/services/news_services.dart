import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices{
  final Dio dio;
  NewsServices({required this.dio});
  Future<List<ArticleModel>> getGeneralNews() async{
    Response response=await dio.get("https://newsapi.org/v2/top-headlines?apiKey=375e43e745a643ad86fe72fc57198d9f&country=us");
    Map<String, dynamic> jsonData=response.data;
    List<dynamic> articles=jsonData["articles"];
    // print(articles);
    List<ArticleModel> articlesObjects=[];
    for(var article in articles){
      ArticleModel articleModel=ArticleModel(image: article["urlToImage"], title: article["title"], subTitle: article["description"]);
      articlesObjects.add(articleModel);
    }
    //why printing Instance of 'ArticleModel'? must override toString method
    // print(articlesObjects);
    return articlesObjects;
  }
}