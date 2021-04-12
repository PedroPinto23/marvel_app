import 'dart:convert';
import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:marvel_app/models/data/characters.dart';
import 'package:marvel_app/repository/marvel_api.dart';

final marvel = FetchCharacter();

class FetchCharacter extends Marvel {
  static const BASE_URL = "https://gateway.marvel.com:443/v1/public/characters";
  final privateKey = GlobalConfiguration().getString("privateKey");
  final publicKey = GlobalConfiguration().getString("publicKey");
  final ts = '1';

  @override
  Future<MarvelCharacters> getCharacters() async {
    var bytes = md5.convert(utf8.encode(ts + privateKey + publicKey));
    var digest = bytes.toString();
    final url = "$BASE_URL?ts=$ts&limit=50&apikey=$publicKey&hash=$digest";
    try {
      http.Response res = await http.get(Uri.parse(url));

      if (res.statusCode == 200) {
        return MarvelCharacters.fromJSON(json.decode(res.body));
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
