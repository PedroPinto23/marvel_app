import 'package:flutter/cupertino.dart';

class Thumbnail {
  final String path;
  final String tExtension;

  Thumbnail({@required this.path, @required this.tExtension});

  factory Thumbnail.fromJSON(Map<String, dynamic> json) {
    return Thumbnail(
      path: json["path"],
      tExtension: json["extension"],
    );
  }

  Map<String, dynamic> toJSON() => <String, dynamic>{
        'path': path,
        'extension': tExtension,
      };
}
