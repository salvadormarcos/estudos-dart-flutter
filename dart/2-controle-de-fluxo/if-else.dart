void main() {
  /*
   * Fonte: Documentação do Dart - https://dart.dev/guides/language/language-tour#if-and-else
   * 
   * Diferente do JavaScript, as condições devem retornar boolean.
   * No JS quando uado outros elementos, é aplicado um toBoolean na expressão
   * 
   * Ou seja, expressões como " if (lista.length) " não são aceitas pelo Dart
   */

  var isChovendo = true;
  var isNevando = false;

  // Uso de IF/ELSE IF/ELSE
  if (isChovendo) {
    print('Entrou no IF');
  } else if (isNevando) {
    print('Entrou no ELSE-IF');
  } else {
    print('Entoru no ELSE');
  }  

  // Usando operadores ternários
  print('Está chovendo? ${ isChovendo ? 'S' : 'N' }');
  print('Está nevando? ${ isNevando ? 'S' : 'N' }');

}