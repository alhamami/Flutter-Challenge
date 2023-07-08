// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:news_app/views/screens/artical_details_view.dart';
// import 'package:news_app/views/screens/search_result_view.dart';
// import '../../view_models/home_view_model.dart';
// import 'home_view.dart';
//
// enum Views {
//   HomeView,
//   ArticalDetails,
// }
//
// class Loading extends StatefulWidget {
//   Loading({required this.category, required this.searchString});
//
//   String category;
//   String searchString;
//
//   @override
//   State<Loading> createState() => _LoadingState();
// }
//
// class _LoadingState extends State<Loading> {
//   void loadData() async {
//     HomeViewModel homeViewModel = HomeViewModel();
//
//     if (widget.category != null && widget.category != '') {
//       await homeViewModel.fetchNewsByCategory(widget.category);
//     } else {
//       await homeViewModel.fetchNewsByString(widget.searchString);
//     }
//
//     if (widget.category != null && widget.category != '') {
//       Navigator.push(context, MaterialPageRoute(builder: (context) {
//         return HomeView(
//             newsList: homeViewModel.newsList,
//             title: homeViewModel.title,
//             todayDate: homeViewModel.homeModel.todayDate,
//             categories: homeViewModel.homeModel.categories,
//             treadingHeadLine: homeViewModel.homeModel.treadingHeadLine,
//             latestHeadLine: homeViewModel.homeModel.latestHeadLine,
//             category: widget.category);
//       }));
//     } else if (widget.searchString != null && widget.searchString != '') {
//       Navigator.push(context, MaterialPageRoute(builder: (context) {
//         return SearchResult(
//           newsList: homeViewModel.newsList,
//         );
//       }));
//     }
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     loadData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: SpinKitSquareCircle(
//           color: Colors.black,
//           size: 50.0,
//         ),
//       ),
//     );
//   }
// }
