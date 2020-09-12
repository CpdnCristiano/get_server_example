import 'package:api_cidades_br/data/repository/state_repository.dart';
import 'package:api_cidades_br/widget/404_error.dart';
import 'package:get_server/get_server.dart';

class CitysFromState extends GetView {
  Repository repository = Repository();
  @override
  build(Context context) {
    List<String> cidades = repository.citysFromState(context.param('id'));
    if (cidades.isEmpty) {
      return Error404('Estado não encontrado');
    } else {
      return Pageable(cidades);
    }
  }
}
