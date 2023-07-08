import '../../models/home_model.dart';

abstract class NewsRepository {
  Future<List<HomeModel>> getNews();
  Future<List<HomeModel>> getNewsByCategory(String category);
}
