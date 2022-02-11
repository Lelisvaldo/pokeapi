import 'package:pokeapi/src/model/list_pokemon_model.dart';
import 'package:pokeapi/src/services/http_client_interface.dart';

const url = 'https://pokeapi.co/api/v2/pokemon';

class JsonPlaceHolderService {
  final IHttpClient client;

  JsonPlaceHolderService(this.client);

  Future<List<ListPokemonModel>> getAll() async {
    final body = await client.get(url);
    final results = body['results'] as List;
    return results.map(ListPokemonModel.fromjson).toList();
  }
}
