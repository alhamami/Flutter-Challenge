import 'package:news_app/models/home_model.dart';
import 'package:news_app/repositories/news/news_api.dart';
import 'package:timeago/timeago.dart' as timeago;

class HomeViewModel {
  final String title = "Headline.";

  HomeModel homeModel = HomeModel();

  List<Map<String, String>> newsList = [];

  Future<bool> fetchNewsByCategory(String? category) async {
    List<HomeModel> newsData = await NewsAPI().getNewsByCategory(category);

    if (newsData != null || !newsData.isEmpty) {
      for (HomeModel item in newsData) {
        if (item != null &&
            item.newsImageUrl != null &&
            item.newsTitle != null &&
            item.publishedTime != null &&
            item.newsDescription != null &&
            item.newsSource! != null) {
          newsList.add({
            "newsCategory": item.newsCategory!,
            "newsTitle": item.newsTitle!,
            "publishedTime":
                timeago.format(DateTime.parse(item.publishedTime!)).toString(),
            "newsImageUrl": item.newsImageUrl!,
            "newsDescription": item.newsDescription!,
            "newsSource": item.newsSource!,
          });
        }
      }
      return true;
    } else {
      return false;
    }
  }

//
// Future<bool> fetchNews() async {
//   List<HomeModel> newsData = await NewsAPI().getNews();
//
//   if (newsData != null || !newsData.isEmpty) {
//     for (HomeModel item in newsData) {
//       if (item != null &&
//           item.newsImageUrl != null &&
//           item.newsTitle != null &&
//           item.publishedTime != null) {
//         newsList.add({
//           "newsCategory": item.newsCategory!,
//           "newsTitle": item.newsTitle!,
//           "publishedTime": item.publishedTime!.substring(0, 10),
//           "newsImageUrl": item.newsImageUrl!,
//           "newsDescription": item.newsDescription!,
//         });
//       }
//     }
//     return true;
//   } else {
//     return false;
//   }
// }

  //
  // List<LatestNewsCrad> getListOfLatestNewsCards() {
  //   List<LatestNewsCrad> latestNewsCards = [];
  //
  //   for (int i = 5; i < newsList.length; i++) {
  //     latestNewsCards.add(
  //       LatestNewsCrad(
  //         newsImageUrl: newsList[i]['newsImageUrl']!,
  //         newsTitle: newsList[i]['newsTitle']!,
  //         publishedTime: newsList[i]['publishedTime']!,
  //         newsDescription: newsList[i]['newsDescription']!,
  //         newsCategory: "not found",
  //       ),
  //     );
  //   }
  //
  //   return latestNewsCards;
  // }
  //
  // List<TrendingNewsCrad> getTrendingNews() {
  //   List<TrendingNewsCrad> trendingNewsCards = [];
  //
  //   for (int i = 0; i < 5; i++) {
  //     trendingNewsCards.add(TrendingNewsCrad(
  //       newsCategory: newsList[i]['newsCategory']!,
  //       newsDescription: newsList[i]['newsDescription']!,
  //       newsImageUrl: newsList[i]['newsImageUrl']!,
  //       newsTitle: newsList[i]['newsTitle']!,
  //       publishedTime: "Not Found",
  //     ));
  //   }
  //
  //   return trendingNewsCards;
  // }
}
