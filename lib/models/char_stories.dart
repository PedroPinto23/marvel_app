import 'package:flutter/material.dart';
import 'package:marvel_app/models/char_items.dart';

class Stories {
  final int available;
  final int returned;
  final String collectionURI;
  final List<Items> items;

  Stories({
    @required this.available,
    @required this.returned,
    @required this.collectionURI,
    @required this.items,
  });

  factory Stories.fromJSON(Map<String, dynamic> json) {
    return Stories(
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
  //           "available": "int",
//           "returned": "int",
//           "collectionURI": "string",
//           "items": [
//             {
//               "resourceURI": "string",
//               "name": "string",
//               "type": "string"
//             }
//           ]
}
