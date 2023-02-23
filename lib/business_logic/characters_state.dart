part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {
  bool isSearching = false;
  CharactersScreen screen = CharactersScreen();
}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<CharacterModel> characters;
  CharactersLoaded(this.characters);
}
class CharacterSearched extends CharactersState{

  final List<CharacterModel> searchedCharacters;
  CharacterSearched(this.searchedCharacters);
}
