import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/screens/search_result_view.dart';
import '../../view_models/news_list_view_model.dart';
import '../constants.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/vertical_news_cards_widget.dart';
import 'package:news_app/global/global_data.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  late Widget content;
  TextEditingController searchController = TextEditingController();

  NewsListViewModel newsListViewModel = NewsListViewModel();

  String searchedPhrase = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (GlobalData.myNewsList.isEmpty) {
      content = Container(
        color: kScaffoldBackgroundColor,
        child: Center(
          child: Text('No News Found'),
        ),
      );
    } else {
      GlobalData.updateMyNewsListBySearch('');
      content = Padding(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            SearchBar(
              controller: searchController,
              hintText: 'Search on Everything...',
              hintStyle: MaterialStateProperty.all(
                  TextStyle(color: Colors.grey, fontSize: 15)),
              textStyle: MaterialStateProperty.all(TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
              padding: MaterialStateProperty.all(EdgeInsets.only(left: 15)),
              backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
              elevation: MaterialStateProperty.all(0),
              leading: IconButton(
                  icon: Icon(
                    size: 30,
                    Icons.search,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      print(searchController.text);
                      GlobalData.updateMyNewsListBySearch(
                          searchController.text);
                    });
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Result',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  '${GlobalData.mySearchedNewsList.length} articles found',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            VerticalNewsCards(
                latestNews: GlobalData.mySearchedNewsList,
                category: "widget.category",
                startFromNewsNumber: 0,
                isMyNewsList: true),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.2,
      ),
      body: content,
      bottomNavigationBar: BottomBarStyle(
        selectedButton: 2,
      ),
    );
  }
}
