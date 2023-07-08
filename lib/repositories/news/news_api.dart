import 'news_repository.dart';
import 'package:news_app/models/home_model.dart';
import 'package:dio/dio.dart';

class NewsAPI extends NewsRepository {
  final api_key = 'cdf49a476502414e9e3e591475884c13';

  final dio = Dio();

  @override
  Future<List<HomeModel>> getNewsByCategory(String? category) async {
    List<HomeModel> news = [];

    String categoryValue = category == 'All' ? '' : '=$category';

    try {
      Response response;
      response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=sa&category$categoryValue&apiKey=$api_key',
      );

      if (response.statusCode == 200) {
        var responseData = response.data as Map<String, dynamic>;

        List<dynamic> articles = responseData['articles'];
        news = articles.map((article) {
          return HomeModel.fromJson(article);
        }).toList();
      }
    } catch (e) {
      print(e);
    }

    return news;
  }

// @override
// Future<List<HomeModel>> getNews() async {
//   List<HomeModel> news = [];
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
//       news = articles.map((article) {
//         return HomeModel.fromJson(article);
//       }).toList();
//     }
//   } catch (e) {
//     print(e);
//   }
//
//   return news;
// }

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
