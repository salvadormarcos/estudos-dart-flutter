void main() {
  // Constante String com declaração explicícita do tipo
  final String nome = 'Marcos';
  print(nome);

  // Constante em String usando inferencia de tipos
  final sobrenome = 'Salvador';
  print(sobrenome);

  // Também é possivel declarar cosntante usando "const"
  const diaNascimento = 18;
  print(diaNascimento);

  // A keyword "const" também suporta declaração explicita de tipo
  const int mesNascimento = 11;
  print(mesNascimento);

  // Array/Lista (semelhante a array do JavaScript)
  var lista = [ 'a', 'b' ];
  print(lista);

  // Array imutavel. Semelhante ao Object.freeze([ ]) do JavaScript
  var arrayImutavel = const[ 'a', 'b' ];
  print(arrayImutavel);

  /**
   * Sets e Maps do Dart são semelhantes ao tipos equivalentes ao do Java e JavaScript
   * 
   * Também existe implementações de HashSet, LinkedHashSet, HashMap, LinkedHashMap como no Java
   */
  var conjuntos = new Set<String>();
  conjuntos.add('a');
  conjuntos.add('b');
  conjuntos.add('a');
  print(conjuntos);

  conjuntos = { 'd', 'e', 'd' };
  print(conjuntos);


  var mapas = new Map<String, int>();
  mapas['a'] = 10;
  mapas['b'] = 11;
  print(mapas);

  // Declaração de mapas estilo JSON
  mapas = {
    'a': 20,
    'b': 30
  };
  print(mapas);
}