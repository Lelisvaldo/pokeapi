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
}
