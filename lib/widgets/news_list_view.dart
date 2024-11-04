import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_revision/models/article_model.dart';
import 'package:news_app_revision/services/news_services.dart';
import 'package:news_app_revision/widgets/news_tile.dart';

class NewListView extends StatefulWidget {
  const NewListView({
    super.key,
  });

  @override
  State<NewListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewListView> {
  List<ArticleModel> articles = [];
  @override
  void initState()  {
    super.initState();

     getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices(Dio()).getNews();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length ,
            (BuildContext context, int index) {
      return NewsTile(
        articleModel: articles[index],
      );
    }));
  }
}
