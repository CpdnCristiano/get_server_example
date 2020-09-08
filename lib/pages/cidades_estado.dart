import 'package:get_server/get_server.dart';
import 'package:web_test/repository/state_repository.dart';

class CitysFromState extends GetView {
  Repository repository = Repository();
  @override
  build(Context context) {
    List<String> cidades = repository.citysFromState(context.param('id'));
    if (cidades.isEmpty) {
      return context.send(
        'Não foi encotrado',
      );
    } else {
      return context.sendJson(cidades);
    }
  }
}
