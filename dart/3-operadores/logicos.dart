void main() {
  /**
   *  Operadores logicos básicos.
   */
  print('Igual: ${2 == 2}');

  print('Diferente: ${2 != 3}');

  print('Maior que: ${3 > 2}');

  print('Menor que: ${2 < 3}');

  print('Maior ou igual: ${3 >= 3}');

  print('Menor ou igual: ${2 <= 3}');


  /*
   * Comparação de strings. Funciona igual ao JavaScript
   */
  var texto = '';
  for (var i = 0; i < 3; i++) {
    texto += 'a';
  }

  print('Igual (usando String): ${ texto == 'a' }');

  /**
   * Comparando tipos de variaveis.
   * Seria semelhante ao operador "instanceof" do Java ou uma mistura de "instanceof" e "typeof" do JavaScript
   * OBS.: Diferente dessas linguagens, o Dart tem uma forma de negar o operador "is" sem ter que negar toda a expressao
   */
  var valores = [ 'a', 1, false, 2.5, () => null ];
  for (var valor in valores) {
    print('+-------------------------------------------------');
    print('| Valor: ${valor}');
    print('| > É uma String? ${ valor is String }');

    if (valor is String) {
      // Comportamento semelhante ao TypeScript
      // Quando a variavel é testada com IS dentro de um IF, a variavel automaticamente recebe um cast para o tipo testado
      print('| + -> Texto em UpperCase: ${ valor.toUpperCase() }');
    }

    print('| > É uma Int? ${ valor is int }');
    print('| > É uma Boolean? ${ valor is bool }');
    print('| > É uma Double? ${ valor is double }');
    print('| > Não é uma function? ${ valor is! Function }'); // Negativa do operador "is"
    print('+-------------------------------------------------');
  }
  
  /*
   * Bonus: Operador "as" para Cast. Funciona igual ao "as" do TypeScript.
   * OBS.: Existe uma sobrecarga deste operador para import de bibliotecas. Não confundir
   */
  Object obj = 'TypeCast de variaveis';
  print((obj as String).toUpperCase());
}