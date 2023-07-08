import 'package:news_app/repositories/search_news/search_news_api.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../models/search_result_model.dart';

class SearchResultViewModel {
  List<Map<String, String>> newsList = [];

  final String ResultTitle = "Result.";

  SearchResultModel homeModel = SearchResultModel();

  Future<bool> fetchNewsByString(String searchString) async {
    List<SearchResultModel> newsData =
        await SearchNewsAPI().searchForNewsByString(searchString);

    if (newsData != null || !newsData.isEmpty) {
      for (SearchResultModel item in newsData) {
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
}
