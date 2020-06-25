void main() {
  final p = Pessoa('Marcos');
  p.apresentarSe();
}

class Pessoa {

  String nome;

  Pessoa(this.nome);

  // Métodos funcionam da mesma forma que funções (vistas anteriormente)
  void apresentarSe() {
    print('Olá, meu nome é ${ nome }');
  }

}