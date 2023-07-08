import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/category_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/horizontal_news_cards_widget.dart';

import '../widgets/vertical_news_cards_widget.dart';
import '../widgets/subtitle_widget.dart';
import 'package:news_app/views/constants.dart';

class HomeView extends StatelessWidget {
  HomeView(
      {required this.newsList,
      required this.title,
      required this.todayDate,
      required this.categories,
      required this.treadingHeadLine,
      required this.latestHeadLine});
  final List<Map<String, String>> newsList;
  final String title;
  final String todayDate;
  final List<String> categories;
  final String treadingHeadLine;
  final String latestHeadLine;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(todayDate),
                  SizedBox(
                    height: 40,
                  ),
                  SearchBar(),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            CategoryCards(
              categories: categories,
            ),
            SubTitle(titleName: treadingHeadLine),
            SizedBox(
              height: 25,
            ),
            HorizontalNewsCards(
              trendingNews: newsList,
            ),
            SubTitle(titleName: latestHeadLine),
            SizedBox(
              height: 25,
            ),
            VerticalNewsCards(
              latestNews: newsList,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarStyle(),
    );
  }
}
