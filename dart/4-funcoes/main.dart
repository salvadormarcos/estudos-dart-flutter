// A função main() do Dart funciona de forma semelhante a do Java.
// No entanto, aqui eu recebo uma Lista ao invés de uma Array
void main(List<String> args) {
  print('Função main() com argumentos invocada!');
  print('Total de argumentos passados: ${args.length}');

  // O Dart (assim como o JS/TS), permite que a Arrow Function modifique variáveis externas
  var idx = 1;
  args.forEach((el) => print('Nº ${idx++}: ${el}'));
}