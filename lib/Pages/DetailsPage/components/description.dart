import 'package:flutter/material.dart';
import 'package:marvel_app/styles/styles.dart';

class Description extends StatelessWidget {
  final String text;
  Description({this.text});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: customStyle.description(context),
        ),
      ),
    );
  }
}
