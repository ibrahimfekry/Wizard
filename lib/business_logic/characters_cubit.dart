import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:harry_potter_app/data/models/characters_model.dart';
import 'package:harry_potter_app/data/repository/characters_repository.dart';
import 'package:harry_potter_app/presentation/screens/characters_screen.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  List<CharacterModel>characters = [];
  List<CharacterModel>searchedCharacters = [];
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());
  List<CharacterModel>getAllCharacters(){
    charactersRepository.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters=characters;
    });
    return characters;
  }
  List<CharacterModel>getSearchedCharacters(){
    charactersRepository.getAllCharacters().then((character){
      emit(CharacterSearched(character));
      searchedCharacters = character;
    } );
    return searchedCharacters;
  }

}

