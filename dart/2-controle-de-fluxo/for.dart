void main() {
  // For indexado
  for (var i = 0; i < 10; i++) {
    print('For Idx $i');
  }

  // ForIn para elementos Iteraveis (Listas/Arrays, Sets, etc.)
  var frutas = [ 'Abacaxi', 'Banana', 'Maçã' ];
  for (var item in frutas) {
    print('ForIn => $item');
  }

  // ForEach (função) semelhante ao .forEach do JavaScript e do Java
  // Diferente do Java/JavaScript, precisa por a variavel dentro de parentese ()
  frutas.forEach((fruta) => print('ForEach: $fruta'));
}