import 'package:flutter/material.dart';

import '../../view_models/home_view_model.dart';
import '../../view_models/search_result_view_model.dart';
import '../constants.dart';
import '../widgets/vertical_news_cards_widget.dart';

class SearchResult extends StatefulWidget {
  SearchResult({required this.searchString});

  final String searchString;

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  bool isDataLoaded = false;
  SearchResultViewModel searchResultViewModel = SearchResultViewModel();

  void loadData() async {
    if (await searchResultViewModel.fetchNewsByString(widget.searchString)) {
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

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.2,
        ),
        body: Padding(
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
                leading: Icon(
                  size: 30,
                  Icons.search,
                  color: Colors.grey,
                ),
                onTap: () {
                  if (searchController.text != '') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SearchResult(
                        searchString: searchController.text,
                      );
                    }));
                  }
                },
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
                    '${searchResultViewModel.newsList.length} articles found',
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
                  latestNews: searchResultViewModel.newsList,
                  category: "widget.category"),
            ],
          ),
        ),
      ),
    );
  }
}
