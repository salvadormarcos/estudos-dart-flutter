void main() {
  var p = Ponto();
  print('Ponto(${p.x}, ${p.y})');
}

class Ponto {

  double x; // Inicialmente o valor é null (No Java começaria em 0 [primitivo] ou null [wrapper])

  double y = 0; // Declaração com atribuição de valor, inicialmente é 0;

}