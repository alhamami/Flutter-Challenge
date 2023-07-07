import 'package:news_app/models/home_model.dart';
import '../views/widgets/latest_news_card_widget.dart';
import 'package:news_app/repositories/news/news_api.dart';

class HomeViewModel {
  final String title = "Headline.";

  HomeModel homeModel = HomeModel();

  // fetchAllPosts() async {
  // PostsAPI().getAllPosts();
  // }

  List<LatestNewsCrad> getListOfLatestNewsCards() {
    List<LatestNewsCrad> latestNewsCards = [];
    List<Map<String, String>> latestNews = NewsAPI().getLatestNews();

    if (latestNews != null || !latestNews.isEmpty) {
      for (Map<String, String> item in latestNews) {
        latestNewsCards.add(
          LatestNewsCrad(
            newsCategory: item['newsaCategory'].toString(),
            newsTitle: item['newsaCategory'].toString(),
            time: item['newsaCategory'].toString(),
          ),
        );
      }
    }

    return latestNewsCards;
  }
}
