import 'dart:async';
import 'package:http/http.dart' as http;

class PokeAPI {
  static Future<http.Response> getPokemon() => http.get(Uri.parse(
      "http://127.0.0.1:5500/pokemons")); // Mettre à jour avec l'API en GO
}
