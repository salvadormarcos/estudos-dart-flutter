void main() {
  // Chamando construtor com operador "new" (semelhante ao Java/JavaScript)
  final p1 = new Pessoa();

  // Chamando construtor omitindo o operador "new" (A pertir do Dart 2, o "new" é opcional)
  final p2 = Pessoa();

  // O Dart permite acessar as propriedades/métodos usando o "." como separador (semelhante ao Java e JS)
  p1.nome = 'Marcos';
  p1.dataNascto = DateTime.parse('1989-11-18');

  // Como também permite acessar usando o operador "cascade". Esta sintaxe lembra muito o Design Patter "Builder"
  p2
    ..nome = 'Marcos Koch Salvador'
    ..dataNascto = DateTime.parse('1989-11-18');

  // É possível usar o Optional Chaining para preencher a propriedade apenas se a variavel "p3" for diferente de null
  Pessoa p3 = null;
  p3?.nome = 'Marcos Salvador';
  p3?.dataNascto = DateTime.parse('1989-11-18');
}

class Pessoa {

  String nome;

  DateTime dataNascto;

}