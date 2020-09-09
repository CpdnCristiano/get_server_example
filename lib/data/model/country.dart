// O pais bo caso o brasil
import 'package:api_cidades_br/data/model/state.dart';

class Country {
  // A lista de estados do pais
  List<State> estados;

  // construtor
  Country({this.estados});

  // Construtor de pais apartir do json
  Country.fromJson(Map<String, dynamic> json) {
    if (json['estados'] != null) {
      estados = new List<State>();
      json['estados'].forEach((v) {
        estados.add(new State.fromJson(v));
      });
    }
  }
}
