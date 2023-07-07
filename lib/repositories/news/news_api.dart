import 'news_repository.dart';
import 'package:news_app/models/home_model.dart';

class NewsAPI extends NewsRepository {
  @override
  List<Map<String, String>> getLatestNews() {
    HomeModel homeModel = HomeModel();
    return homeModel.latestNews;
  }
}
