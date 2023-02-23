import 'package:flutter/material.dart';
import 'package:harry_potter_app/constants/colors.dart';
import 'package:harry_potter_app/data/models/characters_model.dart';

class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({Key? key, required this.character}) : super(key: key);
  final CharacterModel character;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mySilver,
      appBar: AppBar(
        title: Text('${character.name}'.toString()),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.network(
                character.image.toString(),
                fit: BoxFit.fill,
                height: 500,
                width: 500,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Actor / Actress:',
                    style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${character.actor}',
                    style: const TextStyle(fontSize: 20, color: MyColors.myWhite),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Species : ',
                    style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${character.species}',
                    style: const TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Gender : ',
                    style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${character.gender}',
                    style: const TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'House : ',
                    style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${character.house}',
                    style: const TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Eye Colour :',
                    style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${character.eyeColour}',
                    style: const TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Hair Colour :',
                    style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${character.hairColour}',
                    style: const TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Ancestry :',
                    style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${character.ancestry}',
                    style: const TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Alive :',
                    style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${character.alive}',
                    style: const TextStyle(fontSize: 25, color: MyColors.myWhite),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
