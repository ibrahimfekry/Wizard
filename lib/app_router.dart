import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_app/business_logic/characters_cubit.dart';
import 'package:harry_potter_app/constants/strings.dart';
import 'package:harry_potter_app/data/Api/characters_api.dart';
import 'package:harry_potter_app/data/repository/characters_repository.dart';
import 'package:harry_potter_app/presentation/screens/characters_details_screen.dart';
import 'package:harry_potter_app/presentation/screens/characters_screen.dart';
import 'data/models/characters_model.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersApi());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: CharactersScreen(),
          ),
        );
      case characterDetailsScreen:
        final character = settings.arguments as CharacterModel;
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) =>
                      CharactersCubit(charactersRepository),
                  child: CharacterDetailsScreen(character: character),
                ));
    }
    return null;
  }
}
