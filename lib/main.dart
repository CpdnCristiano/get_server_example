import 'dart:io';

import 'package:api_cidades_br/pages/page_not_found.dart';
import 'package:api_cidades_br/routes/app_pages.dart';
import 'package:get_server/get_server.dart';

void main() {
  runApp(GetServer(
    port: int.tryParse(Platform.environment['PORT'] ?? '8000'),
    host: '0.0.0.0',
    cors: true,
    getPages: AppPages.routes,
    onNotFound: PageNotFound(),
  ));
}
