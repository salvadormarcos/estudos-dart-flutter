void main() {
  // Funciona de maneira semelhante ao do JS/TS.
  var fn = (el) => print('Fruta: $el');

  // OBS.: O Dart tenta validar os parâmetros da função anônima dependendo de onde a mesma será usada.
  [ 'Maçã', 'Banana', 'Laranja' ].forEach(fn);
}