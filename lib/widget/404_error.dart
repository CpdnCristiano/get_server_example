import 'dart:io';

import 'package:get_server/get_server.dart';

class Error404 extends WidgetBuilder {
  Error404(Context context, String erro)
      : super(context,
            builder: (_) =>
                context.response.status(HttpStatus.notFound).send(erro));
}
