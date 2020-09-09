import 'package:get_server/get_server.dart';

class Error404 extends CustomResponse {
  Error404(Context context, {String erro = 'Página não encontrada'})
      : super(() => context.response.status(4004).send(erro)) {}
}
