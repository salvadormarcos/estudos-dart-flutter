class Tarefa {

  String descricao;
  bool feito;

  Tarefa({this.descricao, this.feito});

  Tarefa.fromJson(Map<String, dynamic> json) {
    descricao = json['descricao'];
    feito = json['feito'];
  }

  Map<String, dynamic> toJson() {
    return {
      'descricao': descricao,
      'feito': feito
    };
  }

}