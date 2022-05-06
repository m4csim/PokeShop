import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import '/api/pokeapi.dart';
import '/models/poke_model.dart';
import '/widgets/pokemon_card.dart';
import '/widgets/pokemon_grid.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Pokemon> pokemon = List.empty();

  @override
  void initState() {
    super.initState();
    getPokemonFromPokeApi();
  }

  void getPokemonFromPokeApi() async {
    PokeAPI.getPokemon().then((response) {
      //print(json.decode(response.body));
      List<Map<String, dynamic>> data = List.from(json.decode(response.body));
      setState(() {
        pokemon = data.asMap().entries.map<Pokemon>((element) {
          element.value['id'] = element.key + 1;
          element.value['img'] =
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${element.key + 1}.png";
          return Pokemon.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PokeShop"),
      ),
      body: PokemonGrid(pokemon: pokemon),
    );
  }
}
