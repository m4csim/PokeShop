import 'package:flutter/material.dart';
import '/models/pokemon_screen_data.dart';
import 'package:http/http.dart' as http;

class DetailBuyButton extends StatelessWidget {
  const DetailBuyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as PokemonScreenData;
    return FloatingActionButton.extended(
      foregroundColor: Colors.black,
      backgroundColor: Colors.yellow,
      onPressed: () => {
        http.get(Uri.parse(
            "http://127.0.0.1:5500/pokemons/" + arguments.name + "/1")),
        //Navigator.pop(context),
        Navigator.pop(context)
      }, // Définir l'action onPressed
      label: const Icon(Icons.shopping_bag_outlined),
    );
  }
}
