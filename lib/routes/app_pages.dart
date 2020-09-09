import 'package:api_cidades_br/pages/all_states.dart';
import 'package:api_cidades_br/pages/cidades_estado.dart';
import 'package:api_cidades_br/pages/page_home.dart';
import 'package:get_server/get_server.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.HOME, page: HomePage()),
    GetPage(name: Routes.STATES, page: AllState()),
    GetPage(name: Routes.CITYS, page: CitysFromState()),
    // this not work
    //GetPage(name: '/*', page: PageNotFoud()),
  ];
}
