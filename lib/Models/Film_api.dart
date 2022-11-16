import 'dart:convert' show jsonDecode;
import 'package:http/http.dart' as http;
import 'package:projetmobilelicence/Models/Film2.dart';

class Film_api {
  static Future<List<Film>> getFilm() async {
    var uri = Uri.https("https://omdbapi.com/");

    final response = await http.get(uri, headers: {
      "apikey": "91fdcc20",
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['Search']) {
      _temp.add(i);
    }

    return Film.FilmFromSnapshot(_temp);
  }
}
