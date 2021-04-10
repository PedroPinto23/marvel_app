import 'package:flutter/cupertino.dart';

class Items {
  final String resourceURI;
  final String name;
  final String type;
  Items({
    @required this.resourceURI,
    @required this.name,
    @required this.type,
  });

  factory Items.fromJSON(Map<String, dynamic> json) {
    return Items(
      resourceURI: json["resourceURI"],
      name: json["name"],
      type: json["type"],
    );
  }

  Map<String, dynamic> toJSON() => <String, dynamic>{
        "resourceURI": resourceURI,
        "name": name,
        "type": type,
      };
}
