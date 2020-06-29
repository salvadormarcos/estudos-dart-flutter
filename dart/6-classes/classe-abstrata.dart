void main() {
  final v1 = new Carro();
  v1.ligarMotor();
  v1.ligarMotor(); // Tenta ligar novamente

  print('\n');

  final v2 = new Moto();
  v2.ligarMotor();
  v2.ligarMotor(); // Tenta ligar novamente
}

abstract class VeiculoMotorizado {

  // Atributos privados possuem o prefixo "_". Eles são visívels por qualquer elemento dentro do arquivo .dart
  // Ao extender uma classe que está em outro arquivo, os elementos privados não são visíveis
  bool _motorLigado = false;

  // Difrente do Java e do TS, o Dart não usa a palavra "abstract" antes dos métodos e getters/setters 
  void ligarMotor();

}

class Carro extends VeiculoMotorizado {

  @override
  void ligarMotor() {
    if (_motorLigado) {
      print('O carro já está ligado!!');
      return;
    }

    print('Ligando carro...');
    _motorLigado = true;
    print('Carro ligado...');
  }

}

class Moto extends VeiculoMotorizado {

  @override
  void ligarMotor() {
    if (_motorLigado) {
      print('A moto já está ligada!!');
      return;
    }

    print('Ligando moto...');
    _motorLigado = true;
    print('Motocicleta ligada...');
  }

}