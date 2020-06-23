void main() {
  var quadrado = new Retangulo()
    ..base = 2
    ..altura = 2;

  print('${ quadrado.toString() }');
  print('-> Área: ${ quadrado.area }');
  print('-> Perímetro: ${ quadrado.perimetro }');
}

class Retangulo {

  int esquerda, direita, topo, rodape;

  int get base => rodape ?? topo;
  set base(int base) => rodape = topo = base;

  int get altura => esquerda ?? direita;
  set altura(int altura) => esquerda = direita = altura;

  int get area => base * altura;

  int get perimetro => 2 * (base + altura);

  @override
  String toString() {
    var arestas = [ esquerda, direita, topo, rodape ];
    return '${runtimeType}(${ arestas.join(', ') })';
  }

}