import 'package:flutter/material.dart';
import 'package:marvel_app/Pages/DetailsPage/components/description.dart';
import 'package:marvel_app/components/custom_backbutton.dart';
import 'package:marvel_app/components/description_name.dart';
import 'package:marvel_app/components/image_card.dart';
import 'package:marvel_app/models/data/char_results.dart';

class DetailsPage extends StatelessWidget {
  final Results result;
  DetailsPage({this.result});
  @override
  Widget build(BuildContext context) {
    bool isEmpty = result.description.isEmpty;
    return Scaffold(
      appBar: AppBar(
        title: DescriptionName(name: result.name, size: 22),
        centerTitle: true,
        leading: CustomBackButton(),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 5),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: ImageCard(result: result),
              ),
              Description(
                text: isEmpty ? "No description found" : result.description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
