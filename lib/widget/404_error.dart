import 'dart:async';

import 'package:get_server/get_server.dart';

class Error404 extends GetWidget {
  String erro;
  Error404(this.erro);

  @override
  build(BuildContext context) {
    context.statusCode(404);
    return Json({});
  }
}
