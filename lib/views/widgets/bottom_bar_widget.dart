import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/model/options.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomBarStyle extends StatefulWidget {
  const BottomBarStyle({super.key});

  @override
  State<BottomBarStyle> createState() => _BottomBarStyleState();
}

class _BottomBarStyleState extends State<BottomBarStyle> {
  var selected = 0;

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
      currentIndex: selected,
      onTap: (index) {
        setState(() {
          selected = index;
          print(index);
          // controller.jumpToPage(index);
        });
      },
    );
  }
}
