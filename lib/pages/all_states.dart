import 'package:api_cidades_br/data/repository/state_repository.dart';
import 'package:get_server/get_server.dart';

class AllState extends GetView {
  Repository repository = Repository();
  @override
  build(Context context) {
    return Json(repository.findAllStates());
  }
}
