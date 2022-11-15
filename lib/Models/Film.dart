import 'dart:convert' show jsonDecode;
import 'package:http/http.dart' as http;
import 'package:projetmobilelicence/Models/Film_api.dart';

class RecipeApi {
  static Future<List<Film_api>> getRecipe() async {
    var uri = Uri.https(
      'yummly2.p.rapidapi.com',
      '/feeds/list',
    );

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "YOUR API KEY FROM YUMMLY API",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Film_api.recipesFromSnapshot(_temp);
  }
}
