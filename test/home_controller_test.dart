import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokeapi/src/controllers/home_controller.dart';
import 'package:pokeapi/src/model/list_pokemon_model.dart';
import 'package:pokeapi/src/services/json_placeholder_service.dart';

class JsonPlaceHolderServiceMock extends Mock
    implements JsonPlaceHolderService {}

void main() {
  test('Deve preencher a lista corretamente', () async {
    final service = JsonPlaceHolderServiceMock();
    when(() => service.getAll()).thenAnswer((_) async => [ListPokemonModel.stub()]);
    final controller = HomeController(service);
    await controller.fetchAllPokemons();
    expect(controller.pokemon.length, 1);
  });
}
