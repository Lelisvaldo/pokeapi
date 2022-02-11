import 'package:dio/dio.dart';
import 'package:pokeapi/src/model/list_pokemon_model.dart';

const url = 'https://pokeapi.co/api/v2/pokemon';

class JsonPlaceHolderService {
  final Dio dio;

  JsonPlaceHolderService(this.dio);

  Future<List<ListPokemonModel>> getAll() async {
    final response = await dio.get(url);
    final body = response.data as dynamic;
    final results = body['results'] as List;
    return results.map(ListPokemonModel.fromjson).toList();
  }
}
