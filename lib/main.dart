import 'package:get_server/get_server.dart';
import 'package:web_test/routes/app_pages.dart';

void main() async {
  runApp(GetServer(
    getPages: AppPages.routes,
  ));
}
