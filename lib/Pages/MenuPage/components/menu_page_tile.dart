import 'package:flutter/material.dart';
import 'package:marvel_app/Pages/DetailsPage/details_page.dart';
import 'package:marvel_app/components/description_name.dart';
import 'package:marvel_app/components/image_card.dart';
import 'package:marvel_app/models/char_results.dart';
import 'package:marvel_app/helpers/helpers.dart';

class MenuPageTile extends StatelessWidget {
  final Results result;
  MenuPageTile({@required this.result});
  @override
  Widget build(BuildContext context) {
    List<String> name = result.name.split(" ");
    final first = firstName(name);
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailsPage(result: result),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            ImageCard(result: result),
            Positioned(
              bottom: 10,
              child: DescriptionName(name: first),
            )
          ],
        ),
      ),
    );
  }
}
