void main() {
  // Operador Ternário. FUnciona semelhante as outras linguagens
  var isVisivel = true;
  print('É visível? ${ isVisivel ? 'S' : 'N' }');

  /*
   * Operador NonNull... É semelhante operador "exp1 || exp2" do JS.
   * Se o valor do lado esquerdo for null, é retornado o valor do lado direito
   */
  var userName = 'Marcos';
  print('Usuário logado: ${ userName ?? 'Anónimo' }');
}