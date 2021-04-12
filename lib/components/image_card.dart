import 'package:flutter/material.dart';
import 'package:marvel_app/models/char_results.dart';
import 'package:marvel_app/helpers/helpers.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageCard extends StatelessWidget {
  final Results result;
  ImageCard({@required this.result});
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: result,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: FadeInImage.memoryNetwork(
          fit: BoxFit.cover,
          placeholder: kTransparentImage,
          image: url(result),
        ),
      ),
    );
  }
}
