import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/view_models/explore_view_model.dart';

import '../constants.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/explore_content_widget.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  TextEditingController searchController = TextEditingController();
  bool isDataLoaded = false;
  ExploreViewModel exploreViewModel = ExploreViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    if (await exploreViewModel.fetchSources()) {
      setState(() {
        isDataLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 20, right: 30),
              child: SearchBar(
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
                  color: Colors.black,
                ),
                onTap: () {
                  if (searchController.text != '') {}
                },
              ),
            ),
            Divider(thickness: 1),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Explore Sources',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                child: ExploreContent(
                    listOfSources: exploreViewModel.listOfSources))
          ],
        ),
      ),
      bottomNavigationBar: BottomBarStyle(
        selectedButton: 1,
      ),
    );
  }
}
