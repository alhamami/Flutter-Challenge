import 'package:news_app/models/search_result_model.dart';

abstract class SearchNewsRepository {
  Future<List<SearchResultModel>> searchForNewsByString(String sezrchString);
}
