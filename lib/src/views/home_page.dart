import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';
import '../services/dio_client.dart';
import '../services/json_placeholder_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController(JsonPlaceHolderService(DioClient()));
  @override
  void initState(){
    super.initState();
    controller.fetchAllPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon List'),
      ),
      body: AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return ListView.builder(
              itemCount: controller.pokemon.length,
              itemBuilder: (context, index) {
                final pokemon = controller.pokemon[index];
                return ListTile(
                  title: Text(pokemon.name),
                );
              },
            );
          }),
    );
  }
}
