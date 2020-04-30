void main() {
  /*
   * Faz o parse de string para int.
   * - Diferente do Java, o Dart faz um "trim" antes do parse. Ou seja, ele remove espaços no inicio e final da string
   * - Diferente do parseInt do JavaScript, o Dart não remove outros caracteres de texto da string.
   * - Se existirem caracteres de texto ou for uma string vazia o Dart lança uma ForamtException
   */
  var intParseado = int.parse(' 11 ');
  print('Parse de inteiro: "${intParseado}"');

  // Complementando o topico anterior, o TryParse retorna "null" ao invés de lançar ForamtException
  intParseado = int.tryParse('x112');
  print('TryParse de inteiro: "${intParseado}"');

  // O comportamento de Parse para double segue as mesmas conveções do Parse para int
  var doubleParseado = double.parse('1.5');
  print('Parse de double: "${doubleParseado}"');

  // Convertendo texto/caracter para CharCode
  var charCode = 'a'.codeUnitAt(0);
  print(charCode);

  var textoAPartirCharcode = String.fromCharCode(97);
  print(textoAPartirCharcode);

  /**
   * Semelhante ao Template Strings do ECMA Script 6 e o Text Blocks do Java 13/14
   * No entanto, ao contrário do Java, o Dart faz interpolação de variaveis
   */
  var textoMultiLinha = """
    <html>
      <body>
        <p>Exemplo de string multi linha</p>
      </body>
    </html>
  """;
  print(textoMultiLinha);

  // Além do operador ternários (exp ? v1 : v2), o Dart suporta um if/else if/else dentro da declaração de Lista/Array, Set e Maps
  var isAdicionarTreceiro = true;
  var conjunto = {
    1,
    2,
    if (isAdicionarTreceiro) 3 else 4,
  };
  print(conjunto);

  // Dart também possui o operador "spread" como no JavaScript moderno
  var lista = [ 'a', 'b', ...conjunto ];
  print(lista);

  // Alem de if/else dentro da declaração de Array, o Dart também suporta um for na declaração
  var listaDeStrings = [
    '#0',
    for (var i = 0; i < 10; i++) '#$i'
  ];
  print(listaDeStrings);
}