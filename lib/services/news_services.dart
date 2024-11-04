import 'package:dio/dio.dart';
import 'package:news_app_revision/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=77304984093b43788226667d7b813a6c&category');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles =jsonData ['articles'];
    List<ArticleModel> articlesList = [];


    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['utlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
