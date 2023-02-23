import 'dart:convert';
import 'package:http/http.dart'as http;
class CharactersApi {
  Future<List<dynamic>> getAllCharacters() async {
    try {
      http.Response response = await http.get(Uri.parse('https://hp-api.onrender.com/api/characters'));
      return jsonDecode(response.body);
    } catch (e) {
      return [];
    }
}
}
