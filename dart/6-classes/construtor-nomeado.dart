void main() {
  final p1 = Pessoa('Marcos', DateTime.parse('1989-11-18'));

  final p2 = Pessoa.fromJson({ 'nome': 'Marcos Salvador', 'dataNascto': '1989-11-18' });
  
  [ p1, p2 ].forEach((p) => print('${p.nome} - ${p.dataNascto}'));
}

/**
 * OBS.: Os contrutores do Dart funcionam de forma diferente aos do Java/TypeScript quando um atributo for final/readonly.
 * Os campos marcados com estas keywords só podem ser definidos dentro do corpo do construtor.
 * 
 * No Dart, estes campos DEVEM ser preenchidos antes do corpo do construtor executar. Para isto, deve-se usar 
 * a lista de inicializadores: https://dart.dev/guides/language/language-tour#initializer-list
 */
class Pessoa {

    String nome;
    DateTime dataNascto;

    // Construtor comum usando sintax-sugar para setar os campos de classe
    Pessoa(this.nome, this.dataNascto);

    /**
     * Construtor nomeado: recomenda-se usar quando houver necessidade de multiplos construtores
     * ou para melhorar a legibilidade do código;
     */
    Pessoa.fromJson(Map<String, dynamic> data) {
      this.nome = data['nome'];
      this.dataNascto = DateTime.tryParse(data['dataNascto']);
    }

}