import 'news_repository.dart';
import 'package:news_app/models/home_model.dart';
import 'package:dio/dio.dart';

class NewsAPI extends NewsRepository {
  final api_key = 'f530bc8bc9f041f79e4031b273874d1d';

  final dio = Dio();

  @override
  Future<List<HomeModel>> getLatestNews() async {
    List<HomeModel> latestNews = [];

    try {
      Response response;
      response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=sa&apiKey=$api_key',
      );

      if (response.statusCode == 200) {
        var responseData = response.data as Map<String, dynamic>;

        List<dynamic> articles = responseData['articles'];
        latestNews = articles.map((article) {
          return HomeModel.fromJson(article);
        }).toList();
      }
    } catch (e) {
      print(e);
    }

    return latestNews;
  }
  //
  // @override
  // Future<List<HomeModel>> getTrendingNews() async {
  //   List<HomeModel> latestNews = [];
  //
  //   try {
  //     Response response;
  //     response = await dio.get(
  //       'https://newsapi.org/v2/top-headlines?country=sa&apiKey=$api_key',
  //     );
  //
  //     if (response.statusCode == 200) {
  //       var responseData = response.data as Map<String, dynamic>;
  //
  //       List<dynamic> articles = responseData['articles'];
  //       latestNews = articles.map((article) {
  //         return HomeModel.fromJson(article);
  //       }).toList();
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  //
  //   return latestNews;
  // }
}
