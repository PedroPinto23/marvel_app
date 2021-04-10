import 'package:flutter/material.dart';
import 'package:marvel_app/models/char_data.dart';

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

//   {
//   "code": "int",
//   "status": "string",
//   "copyright": "string",
//   "attributionText": "string",
//   "attributionHTML": "string",
//   "data": {
//     "offset": "int",
//     "limit": "int",
//     "total": "int",
//     "count": "int",
//     "results": [
//       {
//         "id": "int",
//         "name": "string",
//         "description": "string",
//         "modified": "Date",
//         "resourceURI": "string",
//         "urls": [
//           {
//             "type": "string",
//             "url": "string"
//           }
//         ],
//         "thumbnail": {
//           "path": "string",
//           "extension": "string"
//         },
//         "comics": {
//           "available": "int",
//           "returned": "int",
//           "collectionURI": "string",
//           "items": [
//             {
//               "resourceURI": "string",
//               "name": "string"
//             }
//           ]
//         },
//         "stories": {
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
//         },
//         "events": {
//           "available": "int",
//           "returned": "int",
//           "collectionURI": "string",
//           "items": [
//             {
//               "resourceURI": "string",
//               "name": "string"
//             }
//           ]
//         },
//         "series": {
//           "available": "int",
//           "returned": "int",
//           "collectionURI": "string",
//           "items": [
//             {
//               "resourceURI": "string",
//               "name": "string"
//             }
//           ]
//         }
//       }
//     ]
//   },
//   "etag": "string"
// }

}
