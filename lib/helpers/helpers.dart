import 'package:marvel_app/models/data/char_results.dart';

String url(Results result) {
  final path = result.thumbnail.path;
  final ext = result.thumbnail.tExtension;

  return "$path.$ext";
}

String firstName(List<String> name) {
  return name[0];
}
