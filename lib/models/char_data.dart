import 'package:flutter/material.dart';
import 'package:marvel_app/models/char_results.dart';

class Data {
  final int offset;
  final int limit;
  final int total;
  final int count;
  final List<Results> results;

  Data({
    @required this.offset,
    @required this.limit,
    @required this.total,
    @required this.count,
    @required this.results,
  });

  factory Data.fromJSON(Map<String, dynamic> json) {
    return Data(
      offset: json['offset'],
      limit: json['limit'],
      total: json['total'],
      count: json['count'],
      results: List<Results>.from(json["results"].map(
        (e) => Results.fromJSON(e),
      )),
    );
  }

  Map<String, dynamic> toJSON() => <String, dynamic>{
        'offset': offset,
        'limit': limit,
        'total': total,
        'count': count,
        'results': results,
      };
}
