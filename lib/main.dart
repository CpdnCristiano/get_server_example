import 'package:api_cidades_br/routes/app_pages.dart';
import 'package:get_server/get_server.dart';

void main() {
  runApp(GetServer(
    getPages: AppPages.routes,
  ));
}
