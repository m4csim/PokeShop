import 'package:flutter/material.dart';
import '/models/pokemon_screen_data.dart';
import '/widgets/pokemon_card_data.dart';

class PokemonCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final int count;

  const PokemonCard({
    Key? key,
    required this.id,
    required this.name,
    required this.image,
    required this.count,
  }) : super(key: key);

  BoxDecoration getContainerDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.grey.withOpacity(0.24),
          width: 1,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white, // Définir la couleur en fonction du type
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          Navigator.pushNamed(
            context,
            "/details",
            arguments: PokemonScreenData(id, name, image),
          )
        },
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              PokemonCardData(
                name: name,
                image: image,
                count: count,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
