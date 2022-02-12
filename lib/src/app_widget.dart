import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'views/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ).modular();
  }
}
