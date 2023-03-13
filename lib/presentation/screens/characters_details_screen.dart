import 'package:flutter/material.dart';
import 'package:harry_potter_app/constants/colors.dart';
import 'package:harry_potter_app/data/models/characters_model.dart';

class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({Key? key, required this.character})
      : super(key: key);
  final CharacterModel character;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myBlue,
      appBar: AppBar(
        title: Text(
          '${character.name}'.toString(),
        ),
        centerTitle: true,
        backgroundColor: MyColors.myBlue,
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
              const Divider(
                color: MyColors.myWhite,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'STATISTICS',
                    style: TextStyle(
                        fontSize: 30,
                        color: MyColors.myWhite,
                        decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Card(
                color: const Color.fromARGB(0, 45, 45, 45),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Actor : ',
                              overflow: TextOverflow.fade,
                              style: TextStyle(fontSize: 25, color: MyColors.myWhite,),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Species : ',
                              style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Gender : ',
                              style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'House : ',
                              style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Eye Colour :',
                              style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Hair Colour :',
                              style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Ancestry :',
                              style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Alive :',
                              style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Wizard :',
                              style: TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Date Of Birth :',
                              style: TextStyle(fontSize: 20, color: MyColors.myWhite),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Hogwarts Student :',
                              style: TextStyle(fontSize: 20, color: MyColors.myWhite),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Hogwarts Staff :',
                              style: TextStyle(fontSize: 20, color: MyColors.myWhite),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          children: [
                            Text(
                              '${character.actor}',
                              style:
                              const TextStyle(fontSize: 20, color: MyColors.myWhite),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${character.species}',
                              style:
                              const TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${character.gender}',
                              style:
                              const TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${character.house}',
                              style:
                              const TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${character.eyeColour}',
                              style:
                              const TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${character.hairColour}',
                              style:
                              const TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${character.ancestry}',
                              style:
                              const TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${character.alive}',
                              style:
                              const TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${character.wizard}',
                              style:
                              const TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${character.dateOfBirth}',
                              style:
                              const TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${character.hogwartsStudent}',
                              style:
                              const TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${character.hogwartsStaff}',
                              style:
                              const TextStyle(fontSize: 25, color: MyColors.myWhite),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
