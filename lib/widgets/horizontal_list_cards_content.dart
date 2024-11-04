// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app_revision/models/horizontal_list_model.dart';

class HorizontalListCardsContent extends StatelessWidget {
  const HorizontalListCardsContent({super.key, required this.category});

  final HorizontalListModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image:  DecorationImage(
                  image: AssetImage(category.image), fit: BoxFit.fill)),
          child:  Center(
            child: Text(category.contentName,
              style: const TextStyle( 
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
