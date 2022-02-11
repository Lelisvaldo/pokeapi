class ListPokemonModel {
  ListPokemonModel({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  static ListPokemonModel fromjson(dynamic map) {
    return ListPokemonModel(
      name: map['name'],
      url: map['url'],
    );
  }

  static ListPokemonModel stub() => ListPokemonModel(
        name: 'bulbasaur',
        url: 'https://pokeapi.co/api/v2/pokemon/1/',
      );
}
