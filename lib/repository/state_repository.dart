import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart';
import 'package:web_test/model/country.dart';
import 'package:web_test/model/state.dart';

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
