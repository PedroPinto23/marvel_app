import 'package:flutter/material.dart';
import 'package:marvel_app/models/data/char_data.dart';

class MarvelCharacters {
  final int code;
  final String status;
  final String copyright;
  final String attributionText;
  final String attributionHTML;
  final Data data;

  MarvelCharacters({
    @required this.code,
    @required this.status,
    @required this.copyright,
    @required this.attributionText,
    @required this.attributionHTML,
    @required this.data,
  });

  factory MarvelCharacters.fromJSON(Map<String, dynamic> json) {
    return MarvelCharacters(
      code: json["code"],
      status: json["status"],
      copyright: json["copyright"],
      attributionText: json["attributionText"],
      attributionHTML: json["attributionHTML"],
      data: Data.fromJSON(json["data"]),
    );
  }

  Map<String, dynamic> toJSON() => <String, dynamic>{
        'code': code,
        'status': status,
        'copyright': copyright,
        'attributionText': attributionText,
        'attributionHTML': attributionHTML,
        'data': data,
      };
}
