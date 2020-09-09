import 'dart:convert';
import 'dart:io';

import 'package:api_cidades_br/data/model/country.dart';
import 'package:api_cidades_br/data/model/state.dart';
import 'package:path/path.dart';

class Repository {
  Country brasil;
  Repository() {
    var scriptFile = Platform.script.toFilePath();
    File data = File(join(dirname(scriptFile), '../assets/brasil.json'));
    brasil = Country.fromJson(jsonDecode(data.readAsStringSync()));
  }
  List<StateMin> findAllStates() {
    List<StateMin> stateMin = [];
    brasil.estados.forEach((state) {
      stateMin.add(StateMin(nome: state.nome, sigla: state.sigla));
    });
    return stateMin;
  }

  List<String> citysFromState(String sigla) {
    State state = brasil.estados.firstWhere(
        (s) => s.sigla.toLowerCase() == sigla.toLowerCase(),
        orElse: () => null);

    return state == null ? [] : state.cidades;
  }
}
