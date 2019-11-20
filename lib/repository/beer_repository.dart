import 'dart:convert';
import '../model/Beer.dart';

import 'package:http/http.dart' as http;

Future<Stream<Beer>> getBeers() async {
  final String url = 'https://api.punkapi.com/v2/beers';

  final client = new http.Client();
  final streamedRest = await client.send(
      http.Request('get', Uri.parse(url))
  );

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .expand((data) => (data as List))
      .map((data) => Beer.fromJSON(data));
}