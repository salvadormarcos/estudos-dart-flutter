void main() {
  /*
   * Parametros opcionais nomeados
   */
  var text = 'Tour sobre Dart - Estudos sobre a linguagem Dart';

  print('Sem preencher os opcionais: "${ ellipsis(text, 6) }"');
  print('Preenchendo um opcional (onlyTruncate): "${ ellipsis(text, 6, onlyTruncate: true) }"');
  print('Preenchendo um opcional (ellipsis): "${ ellipsis(text, 6, ellipsis: '***') }"');

  /*
   * Parametros opcionais indexados
   */
  var a = 'Texto Para Comparação';
  var b = 'texto para comparação';

  print('Sem preencher o opcional (ignoreCase): "${ isEquals(a, b) }"');
  print('Preenchendo o opcional (ignoreCase): "${ isEquals(a, b, true) }"');
}

// Função com parâmetros opcionais nomeados. Assim como em TypeScript, é possível definir um valor default para parametro
// CUIDADO: Se não definir um valor default para o opcional, o valor default será "null".
String ellipsis(String text, int maxChars, { bool onlyTruncate: false, String ellipsis: '...' }) {
  if (text.length < maxChars) {
    return text;
  }

  if (onlyTruncate) {
    ellipsis = '';
  }

  return text.substring(0, maxChars) + ellipsis;
}

// Função com parâmetros opcionais indexados. Os parâmetros são preenchidos conforme ordem que foram declarados
// Assim como os parametros nomeados, é possível definir valor default.
// A forma de chamar/invocar é semelhante ao do Java e JavaScript
bool isEquals(String left, String right, [ bool ignoreCase = false]) {
  if (ignoreCase) {
    // Uso do Opcional Channing (semelhante ao do TypeScript) para evitar tratar o "null"
    left = left?.toUpperCase();
    right = right?.toUpperCase();
  }
  return left == right;
}