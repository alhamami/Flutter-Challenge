import '../../models/home_model.dart';
import '../../models/explore_model.dart';

abstract class NewsRepository {
  Future<List<HomeModel>> getNewsByCategory(String category);
  Future<List<ExploreModel>> getSources();
}
