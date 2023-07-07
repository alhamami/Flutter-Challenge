import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({required this.category, required this.onPressed});

  final String category;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        child: Text(
          category,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
