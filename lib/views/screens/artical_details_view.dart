import 'package:flutter/material.dart';
import 'package:news_app/global/global_data.dart';
import '../constants.dart';

class ArticalDetailsView extends StatelessWidget {
  ArticalDetailsView(
      {required this.newsSource,
      required this.newsImageUrl,
      required this.newsTitle,
      required this.newsDescription,
      required this.newsCategory,
      required this.newsPublishedTime,
      required this.isMyNewsListItem});

  final String newsSource;
  final String newsImageUrl;
  final String newsTitle;
  final String newsDescription;
  final String newsCategory;
  final String newsPublishedTime;
  final bool isMyNewsListItem;

  @override
  Widget build(BuildContext context) {
    String articalMenuAction = isMyNewsListItem ? 'delete' : 'add';
    Text articalMenuLabel =
        isMyNewsListItem ? Text('Delete From My List') : Text('Add to My List');

    return SafeArea(
      child: Scaffold(
        backgroundColor: kScaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.2,
          actions: [
            PopupMenuButton<String>(
              icon: Icon(Icons.more_vert),
              onSelected: (String menuItem) {
                switch (menuItem) {
                  case 'add':
                    GlobalData.addToMyNewsList({
                      "newsTitle": newsTitle,
                      "newsImageUrl": newsImageUrl,
                      "newsDescription": newsDescription,
                      "newsCategory": newsCategory,
                      "publishedTime": newsPublishedTime,
                      "newsSource": newsSource,
                    });
                    break;
                  case 'delete':
                    GlobalData.deleteFromMyNewsList({
                      "newsTitle": newsTitle,
                      "newsImageUrl": newsImageUrl,
                      "newsDescription": newsDescription,
                      "newsCategory": newsCategory,
                      "publishedTime": newsPublishedTime,
                      "newsSource": newsSource,
                    });
                    break;
                  default:
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: articalMenuAction,
                  child: articalMenuLabel,
                ),
              ],
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(25),
          child: ListView(
            children: [
              Text(
                newsSource!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                newsTitle!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image(
                  image: NetworkImage(newsImageUrl!),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 20,
                newsDescription!,
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
