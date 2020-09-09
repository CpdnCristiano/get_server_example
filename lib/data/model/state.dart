// Classe que representa os estados
class State {
  // Ex: SP
  String sigla;

  // ex: São paulo
  String nome;

  // lista de cidades pertecente ao estado
  List<String> cidades;

  //contrutor
  State({this.sigla, this.nome, this.cidades});

  // contrutor de estado apatir de um json
  State.fromJson(Map<String, dynamic> json) {
    sigla = json['sigla'];
    nome = json['nome'];
    cidades = json['cidades'].cast<String>();
  }
}

class StateMin {
  // Ex: SP
  String sigla;

  // ex: São paulo
  String nome;

  // lista de cidades pertecente ao estado

  //contrutor
  StateMin({this.sigla, this.nome});
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sigla'] = this.sigla;
    data['nome'] = this.nome;
    return data;
  }
}
