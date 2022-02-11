import 'package:flutter/cupertino.dart';
import 'package:pokeapi/src/model/list_pokemon_model.dart';
import 'package:pokeapi/src/services/json_placeholder_service.dart';

class HomeController extends ChangeNotifier {
  final JsonPlaceHolderService _service;

  HomeController(this._service);

  var pokemon = <ListPokemonModel>[];

  Future<void> fetchAllPokemons() async {
    pokemon = await _service.getAll();
    notifyListeners();
  }
}
