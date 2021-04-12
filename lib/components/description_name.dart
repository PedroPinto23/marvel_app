import 'package:flutter/material.dart';
import 'package:marvel_app/styles/styles.dart';

class DescriptionName extends StatelessWidget {
  final String name;
  final double size;
  DescriptionName({@required this.name, this.size = 16});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: customStyle.card(context, size),
      ),
    );
  }
}
