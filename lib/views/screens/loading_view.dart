import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../view_models/home_view_model.dart';
import 'home_view.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void loadData() async {
    HomeViewModel homeViewModel = HomeViewModel();
    await homeViewModel.fetchNews();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomeView(
        newsList: homeViewModel.newsList,
        title: homeViewModel.title,
        todayDate: homeViewModel.homeModel.todayDate,
        categories: homeViewModel.homeModel.categories,
        treadingHeadLine: homeViewModel.homeModel.treadingHeadLine,
        latestHeadLine: homeViewModel.homeModel.latestHeadLine,
      );
    }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SpinKitSquareCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
