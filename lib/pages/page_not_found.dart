import 'package:api_cidades_br/widget/404_error.dart';
import 'package:get_server/get_server.dart';

class PageNotFoud extends GetView {
  @override
  build(Context context) {
    return Error404(context, erro: 'Url não encontrada');
  }
}
