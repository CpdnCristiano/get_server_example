import 'dart:async';

import 'package:get_server/get_server.dart';

class Error404 extends GetWidget {
  String erro;
  Error404(this.erro);

  @override
  Future build(Context context) {
    return context.response.status(404).send(erro);
  }
}
