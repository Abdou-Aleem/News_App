import 'package:flutter/material.dart';
import 'package:news_app_revision/services/news_services.dart';
import 'package:news_app_revision/views/home_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
