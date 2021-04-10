import 'package:flutter/material.dart';
import 'package:marvel_app/Pages/DetailsPage/details_page.dart';
import 'package:marvel_app/models/char_results.dart';
import 'package:marvel_app/styles/styles.dart';
import 'package:transparent_image/transparent_image.dart';

class MenuPageTile extends StatelessWidget {
  final Results result;
  MenuPageTile({@required this.result});
  @override
  Widget build(BuildContext context) {
    String path = result.thumbnail.path;
    String ext = result.thumbnail.tExtension;
    List<String> name = result.name.split(" ");
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsPage(
                results: result,
              ))),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FadeInImage.memoryNetwork(
                fadeInCurve: Curves.fastOutSlowIn,
                fit: BoxFit.cover,
                placeholder: kTransparentImage,
                image: "$path/portrait_incredible.$ext",
              ),
            ),
            Positioned(
              bottom: 10,
              child: Container(
                color: Colors.yellow,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  name[0],
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: CustomStyle().cardStyle(context),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
