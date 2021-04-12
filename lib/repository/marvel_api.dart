import 'package:marvel_app/models/data/characters.dart';

abstract class Marvel {
  Future<MarvelCharacters> getCharacters();
}
