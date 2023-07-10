class GlobalData {
  static List<Map<String, String>> _myNewsList = [];

  static List<Map<String, String>> _mySearchedNewsList = [];

  static List<Map<String, String>> get mySearchedNewsList =>
      _mySearchedNewsList;

  static List<Map<String, String>> get myNewsList => _myNewsList;

  static addToMyNewsList(Map<String, String> value) {
    for (Map<String, String> item in _myNewsList) {
      if (item['newsTitle'] == value['newsTitle']) {
        return;
      }
    }
    _myNewsList.add(value);
    // _myNewsList.toSet().toList();
  }

  static deleteFromMyNewsList(Map<String, String> value) {
    for (Map<String, String> item in _myNewsList) {
      if (item['newsTitle'] == value['newsTitle']) {
        _myNewsList.remove(value);
      }
    }

    // _myNewsList.toSet().toList();
  }

  static updateMyNewsListBySearch(String searchPhrase) {
    if (searchPhrase != '') {
      print('============ $searchPhrase =================');
      _mySearchedNewsList.clear();
      print(_mySearchedNewsList);
      print('============ $searchPhrase =================');

      for (Map<String, String> item in _myNewsList) {
        if (item["newsTitle"]!.contains(searchPhrase) ||
            item["newsDescription"]!.contains(searchPhrase) ||
            item["newsCategory"]!.contains(searchPhrase) ||
            item["newsSource"]!.contains(searchPhrase)) {
          print('--------------');
          _mySearchedNewsList.add(item);
        }
      }
    } else {
      _mySearchedNewsList = List.from(_myNewsList);
    }
    print('000000000000000000000 $_mySearchedNewsList 000000000000000000000');
  }
}
