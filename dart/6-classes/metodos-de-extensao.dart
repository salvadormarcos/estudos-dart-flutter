void main() {
  var texto = 'Estudos de Dart';

  print(texto.reverse());

}

/*
 * Os "métodos de extensão" permitem adicionar métodos a classes/objectos existentes na aplicação, 
 * liguagem ou bibliotecas.
 * 
 * Esta funcionalidade pode ser comparada com os métodos declarados no "prototype" de um objeto JavaScript.
 */
extension StringReverse on String {

  String reverse() {
    var out = '';

    for (var idx = length - 1; idx >= 0; idx--) {
      out += this[idx];
    }

    return out;
  }

}
