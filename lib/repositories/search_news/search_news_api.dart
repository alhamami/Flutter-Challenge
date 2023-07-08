import 'package:news_app/repositories/search_news/search_news_repository.dart';
import 'package:news_app/models/home_model.dart';
import 'package:dio/dio.dart';

import '../../models/search_result_model.dart';

class SearchNewsAPI extends SearchNewsRepository {
  final api_key = 'cdf49a476502414e9e3e591475884c13';

  final dio = Dio();

  @override
  Future<List<SearchResultModel>> searchForNewsByString(
      String sezrchString) async {
    List<SearchResultModel> news = [];

    try {
      Response response;
      response = await dio.get(
        'https://newsapi.org/v2/everything?q=$sezrchString&apiKey=$api_key',
      );

      if (response.statusCode == 200) {
        var responseData = response.data as Map<String, dynamic>;

        List<dynamic> articles = responseData['articles'];
        news = articles.map((article) {
          return SearchResultModel.fromJson(article);
        }).toList();
      }
    } catch (e) {
      print(e);
    }

    return news;
  }
}
