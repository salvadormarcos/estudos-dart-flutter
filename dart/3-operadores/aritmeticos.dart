void main() {
  /*
   * Operações matemáricas básicas. Funciona igual ao Java e JavaScript
   */
  print('Soma ${ 2 + 1 }');
  
  print('Subtração ${ 2 - 1 }');

  print('Multiplicação ${ 2 * 2 }');

  print('Divisão (double) ${ 5 / 2 }');

  // Operador exclusivo do Dart. No Java teriamos que pedir um cast para int
  print('Divisão (int) ${ 5 ~/ 2 }');

  print('Resto ${ 5 % 2 }');


  /**
   * Operadores como prefixo para incremento e decremento de variavels.
   */
  var a, b;

  a = 0;
  b = ++a; // Incrementa 'a' antes de 'b' obter seu valor
  print('$a $b');

  a = 0;
  b = a++; // Incrementa 'a' depois de 'b' obter seu valor
  print('$a $b');

  a = 0;
  b = --a; // Decrementa 'a' antes 'b' obter seu valor
  print('$a $b');

  a = 0;
  b = a--; // Decrementa 'a' depois de 'b' obter seu valor
  print('$a $b');
}