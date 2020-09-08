import 'package:get_server/get_server.dart';
import 'package:web_test/pages/all_states.dart';
import 'package:web_test/pages/cidades_estado.dart';
import 'package:web_test/pages/page_home.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.HOME, page: HomePage()),
    GetPage(name: Routes.STATES, page: AllState()),
    GetPage(name: Routes.CITYS, page: CitysFromState())
  ];
}
