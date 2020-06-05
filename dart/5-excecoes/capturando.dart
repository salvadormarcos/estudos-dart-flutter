void main(List<String> args) {
  /**
   * Permite Try/Catch com multiplos blocos Catches tal como é no Java.
   * Segue a ordem do tipo mais específico pro mais genético (semelhante ao Java)
   * 
   * A única limitação em relação ao Java (7+) é o Catch Multiple Exception
   */
  try {
    var date = DateTime.parse(args[0]);
    print('Data parseada: ${ date }');

    if (date.isAfter(DateTime.now())) {
      throw Exception('A data informada é posterior a data atual');
    }
  } on FormatException {
    // Capturando a Exception sem obter a referência do objeto da exceção
    print('Ocorreu um erro de formatação!');
  } on Exception catch (e) {
    // Semelhante ao Catch anterior, porém agora, capturando o objeto da Exception em uma variável
    // O primeiro parâmetro do Catch é a Exception. É possível declarar um segundo parâmetro para obter a Stacktrace
    print('Erro: ${ e.toString() }');
  } catch (e, s) {
    // Capturando toda e qualquer Exception/Error/Objeto/Whatever lançando sem se preocupar com o tipo da Exception
    // Semelhante ao anterior, porém agora, obtendo a Stacktrace do mesmo (opcional)
    print('Um erro desconhecido aconteceu!!:  $e');
    print('StackTrace: $s');
  }
  
}