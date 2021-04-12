import 'package:flutter/cupertino.dart';
import 'package:marvel_app/models/char_comics.dart';
import 'package:marvel_app/models/char_events.dart';
import 'package:marvel_app/models/char_series.dart';
import 'package:marvel_app/models/char_stories.dart';
import 'package:marvel_app/models/char_urls.dart';
import 'package:marvel_app/models/chat_thumbnail.dart';

class Results {
  final int id;
  final String name;
  final String description;
  final String resourceURI;
  final List<Urls> urls;
  final Thumbnail thumbnail;
  final Comics comics;
  final Stories stories;
  final Events events;
  final Series series;

  Results({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.resourceURI,
    @required this.urls,
    @required this.thumbnail,
    @required this.comics,
    @required this.stories,
    @required this.events,
    @required this.series,
  });

  factory Results.fromJSON(Map<String, dynamic> json) {
    return Results(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      resourceURI: json["resourceURI"],
      urls: List<Urls>.from(json["urls"].map(
        (e) => Urls.fromJSON(e),
      )),
      thumbnail: Thumbnail.fromJSON(json["thumbnail"]),
      comics: Comics.fromJSON(json["comics"]),
      stories: Stories.fromJSON(json["stories"]),
      events: Events.fromJSON(json["events"]),
      series: Series.fromJSON(json["series"]),
    );
  }

  Map<String, dynamic> toJSON() => <String, dynamic>{
        'id': id,
        'name': name,
        'desciption': description,
        'resourceURI': resourceURI,
        'urls': urls,
        'thumbnail': thumbnail,
        'comics': comics,
        'events': events,
        'series': series,
      };
}
