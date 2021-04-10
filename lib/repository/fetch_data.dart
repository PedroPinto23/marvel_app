import 'dart:convert';

import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:marvel_app/models/characters.dart';

class FetchData {
  static const BASE_URL = "https://gateway.marvel.com:443/v1/public";
  final privateKey = GlobalConfiguration().getString("privateKey");
  final publicKey = GlobalConfiguration().getString("publicKey");
  final ts = '1';

  Future<MarvelCharacters> getCharacters() async {
    var bytes = md5.convert(utf8.encode(ts + privateKey + publicKey));
    var digest = bytes.toString();
    final url =
        "$BASE_URL/characters?ts=$ts&limit=50&apikey=$publicKey&hash=$digest";
    try {
      http.Response res = await http.get(
        Uri.parse(url),
      );

      if (res.statusCode == 200) {
        return (MarvelCharacters.fromJSON(json.decode(res.body)));
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
