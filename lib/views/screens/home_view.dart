import 'package:flutter/material.dart';
import 'package:news_app/views/screens/artical_details_view.dart';
import 'package:news_app/views/screens/loading_view.dart';
import 'package:news_app/views/screens/search_result_view.dart';
import 'package:news_app/views/widgets/category_widget.dart';
import '../../view_models/home_view_model.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/horizontal_news_cards_widget.dart';
import '../widgets/vertical_news_cards_widget.dart';
import '../widgets/subtitle_widget.dart';
import 'package:news_app/views/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({required this.category});

  final String category;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isDataLoaded = false;
  HomeViewModel homeViewModel = HomeViewModel();

  void loadData() async {
    if (await homeViewModel.fetchNewsByCategory(widget.category)) {
      setState(() {
        isDataLoaded = true;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Visibility(
      replacement: Container(
        color: Colors.white,
        child: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.black,
            color: Colors.white,
          ),
        ),
      ),
      visible: isDataLoaded,
      child: Scaffold(
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
                    Text(
                      homeViewModel.title,
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(homeViewModel.homeModel.todayDate),
                    SizedBox(
                      height: 40,
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
                      padding:
                          MaterialStateProperty.all(EdgeInsets.only(left: 15)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey[200]),
                      elevation: MaterialStateProperty.all(0),
                      leading: IconButton(
                        onPressed: () {
                          if (searchController.text != '') {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SearchResult(
                                searchString: searchController.text,
                              );
                            }));
                          }
                        },
                        icon: Icon(
                          size: 30,
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              CategoryCards(
                  categories: homeViewModel.homeModel.categories,
                  selectedCategory: widget.category),
              SubTitle(titleName: homeViewModel.homeModel.treadingHeadLine),
              SizedBox(
                height: 25,
              ),
              HorizontalNewsCards(
                trendingNews: homeViewModel.newsList,
              ),
              SubTitle(titleName: homeViewModel.homeModel.latestHeadLine),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: VerticalNewsCards(
                    latestNews: homeViewModel.newsList,
                    category: widget.category),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomBarStyle(),
      ),
    );
  }
}
