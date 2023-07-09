import 'package:flutter/material.dart';
import 'package:news_app/views/screens/explore_view.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/model/options.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../screens/home_view.dart';
import '../screens/news_list_view.dart';

class BottomBarStyle extends StatefulWidget {
  const BottomBarStyle({required this.selectedButton});
  final int selectedButton;

  @override
  State<BottomBarStyle> createState() => _BottomBarStyleState();
}

class _BottomBarStyleState extends State<BottomBarStyle> {
  @override
  Widget build(BuildContext context) {
    Color itemColor = Colors.grey;

    PageController controller = PageController();

    return StylishBottomBar(
      option: AnimatedBarOptions(
        // iconSize: 32,
        barAnimation: BarAnimation.fade,
        iconStyle: IconStyle.animated,
        // opacity: 0.3,
      ),
      items: [
        BottomBarItem(
          icon: const Icon(
            Icons.home_filled,
            color: Color(0xFF00897B),
          ),
          selectedColor: Color(0xFF00897B),
          title: const Text('Home'),
        ),
        BottomBarItem(
          icon: const Icon(
            Icons.search,
            color: Color(0xFF00897B),
          ),
          selectedColor: Color(0xFF00897B),
          title: const Text('Explore'),
        ),
        BottomBarItem(
            icon: const Icon(
              Icons.bookmark,
              color: Color(0xFF00897B),
            ),
            selectedColor: Color(0xFF00897B),
            title: const Text('List')),
        BottomBarItem(
            icon: const Icon(
              Icons.account_circle,
              color: Color(0xFF00897B),
            ),
            selectedColor: Color(0xFF00897B),
            title: const Text('Profile')),
      ],
      hasNotch: true,
      fabLocation: StylishBarFabLocation.center,
      currentIndex: widget.selectedButton,
      onTap: (index) {
        setState(() {
          if (index != widget.selectedButton) {
            switch (index) {
              case 0:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeView(category: 'All')));
                break;
              case 1:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExploreView()));
                break;
              case 2:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewsListView()));
                break;
              case 3:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewsListView()));
                break;
              default:
            }
          }

          // controller.jumpToPage(index);
        });
      },
    );
  }
}
