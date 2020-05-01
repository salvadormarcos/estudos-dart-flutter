void main() {
  /*
   * Os operadores de atribuição funcionam de forma semelhante ao JS e Java
   */
  var a = 2; // Assign using =
  a *= 3; // Assign and multiply: a = a * 3

  print('Valor de "a": $a');

  a = null;
  var b = null;
  var valores = [ 1, null ];

  for (var valor in valores) {
    a = valor;
    b ??= valor;

    print('+---------------------------------------');
    print('| Valor (item do laço): $valor');
    print('| Valor "a": $a');
    print('| Valor "b": $b');
    print('+---------------------------------------');

    b = 50; // Reseta o valor de B
  }
}