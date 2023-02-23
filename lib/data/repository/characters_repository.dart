import 'package:harry_potter_app/data/Api/characters_api.dart';
import 'package:harry_potter_app/data/models/characters_model.dart';

class CharactersRepository {
  final CharactersApi charactersApi;
  CharactersRepository(this.charactersApi);
  Future<List<CharacterModel>> getAllCharacters() async {
    final characters = await charactersApi.getAllCharacters();
    return characters
        .map((character) => CharacterModel.fromJson(character)).toList();}
}