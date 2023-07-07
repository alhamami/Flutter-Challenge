import 'package:flutter/material.dart';
import '../../view_models/home_view_model.dart';
import 'package:news_app/views/widgets/category_widget.dart';
import '../widgets/horizontal_news_cards_widget.dart';
import '../widgets/latest_news_card_widget.dart';
import '../widgets/vertical_news_cards_widget.dart';
import '../widgets/subtitle_widget.dart';
import 'package:news_app/views/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeViewModel homeViewModel = HomeViewModel();

  Future loadData() async {
    await homeViewModel.getListOfLatestNewsCards();
  }

  @override
  void initState() {
    loadData();
    super.initState();
  }

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
            CategoryCards(
              categories: homeViewModel.homeModel.categories,
              onPressed: () {},
            ),
            SubTitle(titleName: homeViewModel.homeModel.treadingHeadLine),
            SizedBox(
              height: 25,
            ),
            HorizontalNewsCards(
              trendingNews: homeViewModel.homeModel.trendingNews,
            ),
            SubTitle(titleName: homeViewModel.homeModel.latestHeadLine),
            SizedBox(
              height: 25,
            ),
            VerticalNewsCards(
              listOflatestNewsCards: homeViewModel.latestNewsCards,
            ),
          ],
        ),
      ),
    );
  }
}
