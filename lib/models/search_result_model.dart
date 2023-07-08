import 'package:intl/intl.dart';

class SearchResultModel {
  SearchResultModel(
      {this.newsImageUrl,
      this.newsTitle,
      this.publishedTime,
      this.newsCategory,
      this.newsDescription,
      this.newsSource});
  String? newsImageUrl;
  String? newsTitle;
  String? publishedTime;
  String? newsDescription;
  String? newsCategory;
  String? newsSource;

  SearchResultModel.fromJson(Map<String, dynamic> json) {
    newsImageUrl = json['urlToImage'];
    newsTitle = json['title'];
    publishedTime = json['publishedAt'];
    newsCategory = "Not Found";
    newsDescription = json['description'];
    newsSource = json['source']['name'];
  }
}
