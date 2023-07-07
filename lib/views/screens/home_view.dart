import 'package:flutter/material.dart';
import '../../view_models/home_view_model.dart';
import 'package:news_app/views/widgets/category_widget.dart';
import '../widgets/news_card_widget.dart';
import 'package:news_app/views/constants.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  var homeViewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(homeViewModel.title),
                  Text(homeViewModel.homeModel.todayDate),
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
            CategoryCard(
              categoryName: homeViewModel.homeModel.categories,
              onPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  homeViewModel.homeModel.TreadingHeadLine,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            NewsCard(
              trendingNews: homeViewModel.homeModel.trendingNews,
            ),
          ],
        ),
      ),
    );
  }
}
