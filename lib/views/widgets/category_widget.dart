import 'package:flutter/material.dart';
import 'category_card_widget.dart';

class CategoryCards extends StatelessWidget {
  CategoryCards({required this.categories, required this.onPressed});

  final List<String> categories;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 15),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int i) {
          return CategoryCard(
              category: '${categories[i]}', onPressed: onPressed);
        },
      ),
    );
  }
}
