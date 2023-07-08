import 'package:flutter/material.dart';

import 'latest_news_card_widget.dart';

class VerticalNewsCards extends StatelessWidget {
  VerticalNewsCards({required this.latestNews, required this.category});

  final List<Map<String, String>> latestNews;
  String category;

  List<LatestNewsCrad> getLatestNewsCards() {
    List<LatestNewsCrad> listOflatestNewsCards = [];

    for (int i = 5; i < latestNews.length; i++) {
      listOflatestNewsCards.add(
        LatestNewsCrad(
          newsImageUrl: latestNews[i]['newsImageUrl']!,
          newsTitle: latestNews[i]['newsTitle']!,
          publishedTime: latestNews[i]['publishedTime']!,
          newsDescription: latestNews[i]['newsDescription']!,
          newsCategory: category,
          newsSource: latestNews[i]['newsSource']!,
        ),
      );
    }
    return listOflatestNewsCards;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: getLatestNewsCards(),
    );
  }
}
