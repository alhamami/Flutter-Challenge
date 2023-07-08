import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/trending_news_card_widget.dart';

class HorizontalNewsCards extends StatelessWidget {
  HorizontalNewsCards({required this.trendingNews});

  final List<Map<String, String>> trendingNews;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: trendingNews.length,
        itemBuilder: (context, index) {
          if (index < 5) {
            return TrendingNewsCrad(
              newsImageUrl: trendingNews[index]['newsImageUrl']!,
              newsTitle: trendingNews[index]['newsTitle']!,
              publishedTime: trendingNews[index]['publishedTime']!,
              newsCategory: trendingNews[index]['newsCategory']!,
              newsDescription: trendingNews[index]['newsDescription']!,
            );
          }
        },
      ),
    );
  }
}
