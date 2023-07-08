import 'package:flutter/material.dart';
import 'package:news_app/views/screens/loading_view.dart';

class CategoryCard extends StatefulWidget {
  CategoryCard({required this.category});

  final String category;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  Color selectedColor = Colors.black;

  Color buttonColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: TextButton(
        onPressed: () {
          setState(() {
            buttonColor = selectedColor;
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Loading(category: widget.category);
            }));
          });

          print(widget.category);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        child: Text(
          widget.category,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
