import 'package:flutter/material.dart';
import 'package:marvel_app/models/char_results.dart';

class DetailsPage extends StatelessWidget {
  final Results results;
  DetailsPage({this.results});
  @override
  Widget build(BuildContext context) {
    print(results);
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
