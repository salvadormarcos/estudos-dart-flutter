void main(List<String> args) {
  print('Função main() com argumentos invocada!');
  print('Total de argumentos passados: ${args.length}');

  var idx = 1;
  args.forEach((el) => print('Nº ${idx++}: ${el}'));
}