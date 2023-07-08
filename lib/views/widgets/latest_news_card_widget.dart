import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../screens/artical_details_view.dart';

class LatestNewsCrad extends StatelessWidget {
  LatestNewsCrad(
      {required this.newsCategory,
      required this.newsTitle,
      required this.publishedTime,
      required this.newsImageUrl,
      required this.newsDescription});

  final String newsCategory;

  final String newsTitle;

  final String publishedTime;
  final String newsImageUrl;
  final String newsDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 0, 25, 30),
      constraints: BoxConstraints(
        minHeight: 112,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticalDetails(
                newsImageUrl: newsImageUrl,
                newsTitle: newsTitle,
                newsCategory: newsCategory,
                newsDescription: newsDescription,
              ),
            ),
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      newsCategory,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      newsTitle,
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 18,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          publishedTime,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image(
                  image: NetworkImage(
                    newsImageUrl,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
