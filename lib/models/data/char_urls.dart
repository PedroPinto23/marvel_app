import 'package:flutter/cupertino.dart';

class Urls {
  final String type;
  final String url;

  Urls({@required this.type, @required this.url});

  factory Urls.fromJSON(Map<String, dynamic> json) {
    return Urls(
      type: json["type"],
      url: json["url"],
    );
  }

  Map<String, dynamic> toJSON() => <String, dynamic>{
        'type': type,
        'url': url,
      };
}
