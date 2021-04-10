import 'package:flutter/material.dart';
import 'package:marvel_app/models/char_items.dart';

class Comics {
  final int available;
  final int returned;
  final String collectionURI;
  final List<Items> items;

  Comics({
    @required this.available,
    @required this.returned,
    @required this.collectionURI,
    @required this.items,
  });

  factory Comics.fromJSON(Map<String, dynamic> json) {
    return Comics(
      available: json["available"],
      returned: json["returned"],
      collectionURI: json["collectionURI"],
      items: List.from(json["items"].map(
        (e) => Items.fromJSON(e),
      )),
    );
  }

  Map<String, dynamic> toJSON() => <String, dynamic>{
        "available": available,
        "returned": returned,
        "collectionURI": collectionURI,
        "items": items,
      };
}
