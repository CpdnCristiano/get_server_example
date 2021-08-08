import 'package:api_cidades_br/widget/404_error.dart';
import 'package:get_server/get_server.dart';

class PageNotFound extends GetView {
  @override
  build(BuildContext context) {
    return Error404('Url não encontrada');
  }
}
