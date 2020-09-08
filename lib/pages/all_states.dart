import 'package:get_server/get_server.dart';
import 'package:web_test/repository/state_repository.dart';

class AllState extends GetView {
  Repository repository = Repository();
  @override
  build(Context context) {
    return context.sendJson(repository.findAllStates());
  }
}
