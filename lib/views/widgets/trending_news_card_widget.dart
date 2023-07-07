import 'package:flutter/material.dart';

class TrendingNewsCrad extends StatelessWidget {
  TrendingNewsCrad(
      {required this.newsImageUrl,
      required this.newsTitle,
      required this.newsCategory});

  final String newsImageUrl;
  final String newsTitle;
  final String newsCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: SizedBox(
        width: 250,
        child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image(
                    image: NetworkImage(newsImageUrl),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  newsTitle,
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  newsCategory,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
