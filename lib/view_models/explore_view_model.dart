import 'package:news_app/models/explore_model.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../repositories/news/news_api.dart';

class ExploreViewModel {
  List<Map<String, String>> listOfSources = [];

  Future<bool> fetchSources() async {
    List<ExploreModel> newsSources = await NewsAPI().getSources();
    print(newsSources);

    if (newsSources != null || !newsSources.isEmpty) {
      for (ExploreModel item in newsSources) {
        print(item.sourceName);
        if (item != null && item.sourceName != null) {
          listOfSources.add({
            "newsSource": item.sourceName!,
          });
        }
      }
      return true;
    } else {
      return false;
    }
  }
}
