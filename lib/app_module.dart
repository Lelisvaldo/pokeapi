import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokeapi/src/controllers/home_controller.dart';
import 'package:pokeapi/src/services/dio_client.dart';
import 'package:pokeapi/src/services/http_client_interface.dart';
import 'package:pokeapi/src/services/json_placeholder_service.dart';
import 'package:pokeapi/src/views/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<IHttpClient>((i) => DioClient()),
        Bind.singleton((i) => JsonPlaceHolderService(i())),
        Bind.singleton((i) => HomeController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => HomePage()),
      ];
}
