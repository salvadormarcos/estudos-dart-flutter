void main() {
  // Variavel de inteiro
  int inteiro = 10;
  print(inteiro);

  // Variavel de decimal
  double decimal = 10.5;
  print(decimal);

  // Dart também tem problema numeros decimais ao fazer operações matemáticas.
  // Mesmo problema existente no Java, JavaScript e outras linguagens
  print(0.1 + 0.2);

  // Variavel booleana
  bool logico = true;
  print(logico);

  // Variavel de string/texto
  String texto = 'Estudos Dart';
  print(texto);

  // Usando a inferencia de tipos do Dart
  var usandoVar = 'Texto declarado usando a inferencia de tipos do Dart';
  print(usandoVar);

  // Assim como o "var" do Java 10, o Dart também não permite a troca do tipo da variavel
  // Se a inferencia definiu como string, será sempre string.
  usandoVar = 2020.toString();
  print(usandoVar);

  // Variavel dinamica (semelhante ao Object do Java)
  dynamic dinamico = 10;
  print(dinamico);

  // O tipo dinamico do Dart permite trocar o valor interno tal qual o Object do Java
  dinamico = 'Mudando o valor do dinamico para String';
  print(dinamico);

  // Diferente do Java/JS, o Dart só aceita concatenação entre Strings usando o operador "+".
  // Tipos diferentes devem ser convertidos para String
  print('Exemplo de concatenação do Dart' + inteiro.toString());

  // Para concatenar strings com tipos diferentes deve-se usar a interpolação
  // Semelhante ao Template Strings/Template literal do ECMA Script 6
  print('Como concatenar string: $inteiro + $decimal = ${decimal + inteiro}');

  // Também é possível usar variavel fora da função
  print('Variável fora da função main(): $calculo');

  // Dart permite chamar métodos dos literais de Int e Double
  print('Acessando métodos e propriedades dos literias numericos: ${ 10.isEven } ${ 10.9994.floor() }');
}

var calculo = 10 + 20 - 50;