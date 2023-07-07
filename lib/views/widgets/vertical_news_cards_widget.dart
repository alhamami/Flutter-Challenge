import 'package:flutter/material.dart';

import 'latest_news_card_widget.dart';

class VerticalNewsCards extends StatelessWidget {
  VerticalNewsCards({required this.listOflatestNewsCards});

  final List<LatestNewsCrad> listOflatestNewsCards;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: listOflatestNewsCards,
    );
  }
}
