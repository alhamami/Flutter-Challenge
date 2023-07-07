import 'package:news_app/models/home_model.dart';
import '../views/widgets/latest_news_card_widget.dart';
import 'package:news_app/repositories/news/news_api.dart';

class HomeViewModel {
  final String title = "Headline.";
  HomeModel homeModel = HomeModel();

  List<LatestNewsCrad> latestNewsCards = [];

  // fetchAllPosts() async {
  // PostsAPI().getAllPosts();
  // }

  Future<bool> getListOfLatestNewsCards() async {
    List<HomeModel> latestNews = await NewsAPI().getLatestNews();

    if (latestNews != null || !latestNews.isEmpty) {
      for (HomeModel item in latestNews) {
        if (item != null && item.newsImageUrl != null) {
          print("vvvvvvvvvvvvvvvvvvvvv");
          latestNewsCards.add(
            LatestNewsCrad(
                newsCategory: "not found",
                newsTitle: item.newsTitle!,
                time: item.publishedTime!,
                newsImageUrl: item.newsImageUrl!),
          );
        }
      }
    }

    return latestNewsCards != null;
  }
}
