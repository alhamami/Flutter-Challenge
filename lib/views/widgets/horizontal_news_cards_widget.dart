import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/trending_news_card_widget.dart';

class HorizontalNewsCards extends StatelessWidget {
  HorizontalNewsCards({required this.trendingNews});

  final List<Map<String, String>> trendingNews;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: trendingNews.length,
        itemBuilder: (BuildContext context, int i) {
          return TrendingNewsCrad(
            newsImageUrl: {trendingNews[i]["newsImageUrl"]}.first.toString(),
            newsTitle: {trendingNews[i]["newsTitle"]}.first.toString(),
            newsCategory: {trendingNews[i]["newsaCategory"]}.first.toString(),
          );
        },
      ),
    );
  }
}
