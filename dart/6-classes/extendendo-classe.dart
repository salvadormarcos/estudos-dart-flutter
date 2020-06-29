void main() {
  var lista = [ Veiculo('XXX-000'), Carro('1.0', 'YYY-1111'), Moto('1000', 'ZZZ-2222') ];

  for (var obj in lista) {
    print('+------------------------------------------------');
    print('| Placa: ${ obj.placa }');
    print('| É um veículo? ${ obj is Veiculo }');
    print('| É um carro? ${ obj is Carro }');
    print('| É uma moto? ${ obj is Moto }');
  }
}

class Veiculo {

  String placa;

  Veiculo(this.placa);

}

// Extensão de classes funciona de forma semelhante ao Java e TypeScript
class Carro extends Veiculo {

  String motor;

  // Diferente do Java e TS, para invocar um construtor da superclasse, deve-se usar a "lista de inicializadores"
  // A "lista de inicializadores" a expressao que fica depois do ":" do construtor
  // O Dart não permite chamar o construtor pai dentro do escopo do construtor filho (difernte do Java e TS)
  Carro(this.motor, String placa): super(placa);

}

class Moto extends Veiculo {

  String cilindradas;

  Moto(this.cilindradas, String placa): super(placa);

}