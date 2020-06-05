void main() {
  // Permite lançar uma String como exceção (semelhante ao JS)
  // throw 'Exemplo de exception';

  // Na verdade, embora não seja muito útil, é permitido lançar qualquer objeto (number, string, data, Maps, etc.)
  // throw 5; // Lançando um número
  // throw DateTime.now(); // Lançando um objeto de Data
  // throw { 'nome': 'Marcos' }; // Lançando um mapa

  // Lançando um objeto derivado de Exception (semelhante ao Java)
  // Por questões de qualidade de código, recomenda-se lançar exceções que herdem de Exception ou Error
  throw FormatException('Exemplo de exception');
}