import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  SubTitle({required this.titleName});

  final String titleName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 25),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          titleName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
