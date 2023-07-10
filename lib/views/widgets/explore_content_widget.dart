import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'explore_card_widget.dart';

class ExploreContent extends StatefulWidget {
  const ExploreContent({required this.listOfSources});
  final List<Map<String, String>> listOfSources;
  @override
  State<ExploreContent> createState() => _ExploreContentState();
}

class _ExploreContentState extends State<ExploreContent> {
  List<Widget> createRowOfExploreCard() {
    List<Map<String, String>> sourceImages = [
      {
        'ABC News': './images/abc news.png',
        'ABC News (AU)': './images/abc news.png',
        'Aftenposten': './images/Aftenposten.png',
        'Al Jazeera English': './images/Al Jazeera English.png',
        'ANSA.it': './images/ANSA it.jpg',
        'Argaam': './images/argaam.png',
        'Ars Technica': './images/Ars Technica.png'
      }
    ];

    // List<Map<String, String>> sourceImages = [
    //   {
    //     'ABC News': './images/abc news.png',
    //
    //   },
    //   {        'ABC News (AU)': './images/abc news.png',},
    //   {    'Aftenposten': './images/Aftenposten.png'},
    //   {   'Al Jazeera English': './images/Al Jazeera English.png',},
    //   {        'ANSA.it': './images/ANSA it.jpg',},
    //   {        'Argaam': './images/argaam.png',},
    //   {        'Ars Technica': './images/Ars Technica.png'}
    // ];
    List<Widget> listOfRowOfExploreCard = [];
    List<ExploreCard> listExploreCard = [];
    int itemNumber = 0;

    for (Map<String, String> sourse in widget.listOfSources) {
      if (itemNumber != 3) {
        listExploreCard.add(ExploreCard(
          newsImageUrl:
              './images/Al Jazeera English.png', //sourse['newsImageUrl']!,
          newsSource: sourse['newsSource']!.length > 10
              ? '${sourse['newsSource']!.substring(0, 8)}...'
              : sourse['newsSource']!,
        ));
      } else {
        listOfRowOfExploreCard.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: listExploreCard,
        ));
        listOfRowOfExploreCard.add(
          SizedBox(
            height: 20,
          ),
        );
        listExploreCard = [];
        listExploreCard.add(ExploreCard(
          newsImageUrl:
              './images/Al Jazeera English.png', //sourse['newsImageUrl']!,
          newsSource: sourse['newsSource']!.length > 10
              ? '${sourse['newsSource']!.substring(0, 10)}...'
              : sourse['newsSource']!,
        ));
        itemNumber = 0;
      }
      itemNumber++;
    }

    listOfRowOfExploreCard.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: listExploreCard,
    ));
    listOfRowOfExploreCard.add(
      SizedBox(
        height: 20,
      ),
    );

    return listOfRowOfExploreCard;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: createRowOfExploreCard());
  }
}
