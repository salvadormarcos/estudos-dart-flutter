void main() {
  final p = Pessoa('Marcos');

  // A propriedade "runtimeType" é semelhante ao ".getClass()" do Java
  print('Class type of "p": ${ p.runtimeType } -> ${ p.nome }');

  // Passar é semelhante ao "NomeDaClasse.class" do Java;
  print('${ Pessoa }');

  // Semelhante ao declarar uma variável/objeto do tipo "Class" no Java para receber a referência da classe
  Type typeOfPessoa = p.runtimeType; // Pode ser feito também com a Classe ao invés do ".runtimeType"
  print('Variável com o tipo da classe: ${ typeOfPessoa } ');
}

class Pessoa {

  String nome;

  Pessoa(this.nome);

}