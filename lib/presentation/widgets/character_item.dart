import 'package:flutter/material.dart';
import 'package:harry_potter_app/constants/colors.dart';
import 'package:harry_potter_app/constants/strings.dart';
import 'package:harry_potter_app/data/models/characters_model.dart';

class CharacterItem extends StatelessWidget {
  final CharacterModel character;
  const CharacterItem({Key? key, required this.character}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColors.mySilver,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, characterDetailsScreen,
            arguments: character),
        child: GridTile(
          footer: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.black54,
            child: Text(
              '${character.name}',
              style: const TextStyle(
                  height: 1.3,
                  fontSize: 18,
                  color: MyColors.mySilver,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
          child: Container(
            color: MyColors.myBlue,
            child: character.image!.isNotEmpty
                ? FadeInImage.assetNetwork(
                    width: double.infinity,
                    height: double.infinity,
                    placeholder: 'assets/images/loading.gif',
                    image: character.image.toString(),
                    fit: BoxFit.cover,
                  )
                : Image.asset('assets/images/placeholder.png'),
          ),
        ),
      ),
    );
  }
}
