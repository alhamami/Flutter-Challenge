import 'package:flutter/material.dart';
import '../constants.dart';

class ArticalDetails extends StatelessWidget {
  ArticalDetails(
      {this.newsCategory,
      this.newsImageUrl,
      this.newsTitle,
      this.newsDescription});

  final String? newsCategory;
  final String? newsImageUrl;
  final String? newsTitle;
  final String? newsDescription;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kScaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.2,
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              tooltip: 'Menu',
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(25),
          child: ListView(
            children: [
              Text(
                newsCategory!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                newsTitle!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image(
                  image: NetworkImage(newsImageUrl!),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 20,
                newsDescription!,
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
