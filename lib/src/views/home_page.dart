import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

  @override
  void initState() {
    super.initState();
    controller.fetchAllPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon List'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: controller.pokemon.length,
          itemBuilder: (context, index) => Card(
            elevation: 6,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                child: Image.network(
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${index + 1}.png'),
                backgroundColor: Colors.white,
              ),
              title: Text(
                controller.pokemon[index].name.toUpperCase(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.more_horiz),
            ),
          ),
        ),
      ),
    );
  }
}
