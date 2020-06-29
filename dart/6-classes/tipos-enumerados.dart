void main() {

  print('Cores disponíveis: ${ Cor.values }');

  var cor = Cor.vermelho;

  switch (cor) {
    case Cor.vermelho:
      print('Vermelho como as rosas!');
      break;

    case Cor.vermelho:
      print('Verde como a grama!');
      break;

    default:
      print('Cor selecionada: ${ cor } - Idx: ${ cor.index }'); // Cor.azul'
  }
}

class Teste {}

/**
 * Os Enums do Dart são limitados. Eles não permitem atributos, métodos ou implementar classes como os enums do Java.
 * 
 * A única informação extra que temos é o "index" que representa a ordem da contante (tal como o "ordinal" do enum do Java)
 */
enum Cor {

  vermelho, verde, azul

}