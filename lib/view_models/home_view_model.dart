import 'package:news_app/models/home_model.dart';
import '../views/widgets/latest_news_card_widget.dart';
import 'package:news_app/repositories/news/news_api.dart';

import '../views/widgets/trending_news_card_widget.dart';

class HomeViewModel {
  final String title = "Headline.";

  HomeModel homeModel = HomeModel();

  List<Map<String, String>> newsList = [];

  Future<bool> fetchNews() async {
    List<HomeModel> newsData = await NewsAPI().getLatestNews();

    if (newsData != null || !newsData.isEmpty) {
      for (HomeModel item in newsData) {
        if (item != null &&
            item.newsImageUrl != null &&
            item.newsTitle != null &&
            item.publishedTime != null) {
          newsList.add({
            "newsCategory": "not found",
            "newsTitle": item.newsTitle!,
            "publishedTime": item.publishedTime!.substring(0, 10),
            "newsImageUrl": item.newsImageUrl!,
          });
        }
      }
      return true;
    } else {
      return false;
    }
  }

  List<LatestNewsCrad> getListOfLatestNewsCards() {
    List<LatestNewsCrad> latestNewsCards = [];

    for (int i = 5; i < newsList.length; i++) {
      latestNewsCards.add(
        LatestNewsCrad(
          newsImageUrl: newsList[i]['newsImageUrl']!,
          newsTitle: newsList[i]['newsTitle']!,
          publishedTime: newsList[i]['time']!,
          newsCategory: "not found",
        ),
      );
    }

    return latestNewsCards;
  }

  List<TrendingNewsCrad> getTrendingNews() {
    List<TrendingNewsCrad> trendingNewsCards = [];

    for (int i = 0; i < 5; i++) {
      trendingNewsCards.add(TrendingNewsCrad(
        newsImageUrl: newsList[i]['newsImageUrl']!,
        newsTitle: newsList[i]['newsTitle']!,
        publishedTime: "Not Found",
      ));
    }

    return trendingNewsCards;
  }
}
