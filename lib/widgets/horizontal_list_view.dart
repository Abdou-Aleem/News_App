import 'package:flutter/material.dart';
import 'package:news_app_revision/models/horizontal_list_model.dart';
import 'package:news_app_revision/widgets/horizontal_list_cards_content.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
  });

  final List<HorizontalListModel> categories = const [
    HorizontalListModel(image: 'assets/business.avif', contentName: 'business'),
    HorizontalListModel(image: 'assets/entertaiment.avif', contentName:'entertaiment'),
    HorizontalListModel(image: 'assets/general.avif', contentName: 'general'),
    HorizontalListModel(image: 'assets/health.avif', contentName: 'health'),
    HorizontalListModel(image: 'assets/science.avif', contentName: 'science'),
    HorizontalListModel(image: 'assets/sports.avif', contentName: 'sports'),
    HorizontalListModel(image: 'assets/technology.jpeg', contentName: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 85,

      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return  HorizontalListCardsContent(
              category: categories[index],
            );
          }),
    );
  }
}
