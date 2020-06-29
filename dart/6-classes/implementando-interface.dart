void main() {
  final obj1 = new InterfaceExemplo1Impl();
  obj1.fazerAlgo();

  print('\n');

  final obj2 = new InterfaceExemplo2Impl();
  obj2.fazerAlgo();
}

/*
 * A linguagem Dart não possui uma palavra reservada (ou categoria de tipos) para definir uma interface.
 *
 * Para "emular" esta funcionalidade, é possível que uma classe implemente outra classe. Neste caso o Dart forçará a implementação
 * de todos os membros da "superinterface", isto é, todos os métodos e TODOS os atributos.
 * 
 * Isto ocorre porque ao definir uma classe, implificamente estamos definindo a "interface" de um objeto. Esta caracteristica os seguintes
 * pontos negativos:
 *   1) Os métodos da "superinterface" precisam ter um corpo, mesmo que seja em branco;
 *   2) O construtor da "superinterface" pode ser invocado criando um objeto indesejado.
 * 
 * Uma abordagem melhor para simular o comportamento de interfaces (tal como o Java) seria:
 *   1) Declarar uma classe abstrata. Isto permite declarar métodos sem corpo (tal como uma interface);
 *   2) Implementar (ao invés de extander) esta classe abstrata.
 */
class InterfaceExemplo1 {

  void fazerAlgo() {}

}

class InterfaceExemplo1Impl implements InterfaceExemplo1 {

  @override // Dart, assim como Java, também coloca "@override" nos métodos sobrescritos
  void fazerAlgo() {
    print('${ this.runtimeType }#fazerAlgo() foi chamado');
  }

}

abstract class InterfaceExemplo2 {

  void fazerAlgo();

}

class InterfaceExemplo2Impl implements InterfaceExemplo2 {

  @override
  void fazerAlgo() {
    print('${ this.runtimeType }#fazerAlgo() foi chamado');
  }

}