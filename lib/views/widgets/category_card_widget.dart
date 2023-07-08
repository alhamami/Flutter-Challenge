import 'package:flutter/material.dart';
import 'package:news_app/views/screens/home_view.dart';
import 'package:news_app/views/screens/loading_view.dart';

class CategoryCard extends StatefulWidget {
  CategoryCard({required this.category, required this.isSelected});

  final String category;
  final bool isSelected;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  Color categoryTextColor = Colors.grey;
  Color categoryButtonColor = Colors.grey.shade200;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryColors();
  }

  void getCategoryColors() {
    List<Color> colors = [];
    if (widget.isSelected) {
      categoryButtonColor = Colors.black;
      categoryTextColor = Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomeView(
              category: widget.category,
            );
          }));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(categoryButtonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        child: Text(
          widget.category,
          style: TextStyle(
              color: categoryTextColor, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
