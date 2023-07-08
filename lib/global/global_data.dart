class GlobalData {
  static List<Map<String, String>> _myNewsList = [];

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
}
