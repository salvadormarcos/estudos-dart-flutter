void main() {
  print('Função com tipo de retorno explicito - isBlank: ${ isBlank('') }');

  print('Função com tipo de retorno omitido - isNotBlank: ${ isNotBlank('') }');
}

// Declarando a função com tipo de retorno explícito
bool isBlank(String text) {
  if (text == null) {
    text = '';
  }
  return text.trim().isEmpty;
}

// Declarando a função omitindo o tipo de retorno.
// Embora o Dart aceite, não é muito aconselhavel para APIs publicas (bibliotecas, frameworks, etc);
isNotBlank(String text) {
  if (text == null) {
    text = '';
  }
  return text.trim().isNotEmpty;
}

// Quando a implementação de uma função tem uma única linha, a mesma pode ser declarada desta forma.
// Funciona de maneira semelhante a uma Array Function do ES6
int square(int v) => v * v;