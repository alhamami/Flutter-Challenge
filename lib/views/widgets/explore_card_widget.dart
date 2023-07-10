import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/explore_search_result_view.dart';

class ExploreCard extends StatefulWidget {
  const ExploreCard({required this.newsImageUrl, required this.newsSource});

  final String newsImageUrl;
  final String newsSource;

  @override
  State<ExploreCard> createState() => _ExploreCardState();
}

class _ExploreCardState extends State<ExploreCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 150,
      width: 105,
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Image(
              width: 30,
              height: 30,
              image: AssetImage(widget.newsImageUrl),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.newsSource,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 15, bottom: 2, left: 18, right: 18),
              child: RawMaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAlias,
                fillColor: Color(0xFF111827),
                child: Text(
                  'Explore',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ExploreSearchResultView(searchString: '');
                  }));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
