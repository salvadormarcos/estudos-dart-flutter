void main() {
  /*
   * Os operadores de atribuição funcionam de forma semelhante ao JS e Java
   */
  var a = 2; // Assign using =
  a *= 3; // Assign and multiply: a = a * 3

  print('Valor de "a": $a');

  // a = null;
  // var b = null;
  const valores = [ 1, null ];
  const valorDefault = 50;

  for (var valor in valores) {
    var a = valor;
    var b = valor;

    a = valorDefault;   // Sempre atribui valor
    b ??= valorDefault; // Se B for nulo, atribui valor. Caso contrário B permanece o mesmo

    print('+---------------------------------------');
    print('| Valor (item do laço): $valor');
    print('| Valor "a": $a');
    print('| Valor "b": $b');
    print('+---------------------------------------');
  }
}