import 'package:marvel_app/models/characters.dart';

abstract class Marvel {
  Future<MarvelCharacters> getCharacters();
}
