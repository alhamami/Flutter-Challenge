import '../../models/home_model.dart';

abstract class NewsRepository {
  Future<List<HomeModel>> getNewsByCategory(String category);
}
