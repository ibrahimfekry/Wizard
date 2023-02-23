import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_app/business_logic/characters_cubit.dart';
import 'package:harry_potter_app/constants/colors.dart';
import 'package:harry_potter_app/data/models/characters_model.dart';
import 'package:harry_potter_app/presentation/widgets/character_item.dart';

class CharactersScreen extends StatefulWidget {
  CharactersScreen({Key? key, this.isSearching}) : super(key: key);
  bool? isSearching;

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<CharacterModel> allCharacters;
  late List<CharacterModel> searchedCharacters;
  bool _isSearching = false;
  final searchTextController = TextEditingController();
  late CharactersCubit charactersCubit;
  Widget _searchedAppBar() {
    return TextField(
      controller: searchTextController,
      cursorColor: MyColors.myBlue,
      decoration: const InputDecoration(
        hintText: 'Find A Character',
        hintStyle: TextStyle(color: MyColors.myBlue, fontSize: 18),
        border: InputBorder.none,
      ),
      style: const TextStyle(color: MyColors.myBlue, fontSize: 18),
      onChanged: (searchedCharacter) {
        _searchedItemList(searchedCharacter);
      },
    );
  }

  void _searchedItemList(String searchedCharacter) {
    searchedCharacters = allCharacters
        .where((character) =>
            character.name!.toLowerCase().contains(searchedCharacter))
        .toList();
    setState(() {});
  }

  List<Widget> _buildAppBarItems() {
    if (_isSearching) {
      return [
        IconButton(
            onPressed: () {
              _clearSearch();
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.clear,
              color: MyColors.myBlue,
            )),
      ];
    } else {
      return [
        IconButton(
            onPressed: _startSearch,
            icon: const Icon(
              Icons.search,
              color: MyColors.myBlue,
            )),
      ];
    }
  }

  void _startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearching() {
    _clearSearch();
    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearch() {
    setState(() {
      searchTextController.clear();
    });
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersLoaded) {
          allCharacters = (state).characters;
          return buildLoadedListWidgets();
        } else if (state is CharacterSearched) {
          searchedCharacters = (state.searchedCharacters);
          return _searchedAppBar();
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }

  Widget showLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        color: MyColors.myWhite,
      ),
    );
  }

  Widget buildLoadedListWidgets() {
    return SingleChildScrollView(
      child: Container(
        color: MyColors.myBlue,
        child: Column(
          children: [
            buildCharactersList(),
          ],
        ),
      ),
    );
  }

  Widget buildCharactersList() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: searchTextController.text.isEmpty
          ? allCharacters.length
          : searchedCharacters.length,
      itemBuilder: (context, index) {
        return CharacterItem(
          character: searchTextController.text.isEmpty
              ? allCharacters[index]
              : searchedCharacters[index],
        );
      },
    );
  }

  Widget _normalAppBar() {
    return const Text(
      'Harry Potter Characters',
      style: TextStyle(
        color: MyColors.myBlue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myWhite,
        leading: _isSearching
            ? const BackButton(
                color: MyColors.myBlue,
              )
            : Container(),
        title: _isSearching ? _searchedAppBar() : _normalAppBar(),
        actions: _buildAppBarItems(),
      ),
      body: buildBlocWidget(),
    );
  }
}
