void main() {
  final c = Carro();

  c.ligarMotor();

  c.ligarMotor();
}

class Carro extends Veiculo with Motorizado {
}

/**
 * Este recurso não existe no Java ou JavaScript.
 * 
 * O Mixin funciona como uma "pseudo-classe", onde é possível declarar métodos e atributos, porém, ela não pode ser instanciada.
 * A classe que usar fizer uso dos Mixins ganha todos os membros de classe declarados no mesmo (tal como a herança).
 * 
 * Uma classe pode usar um ou mais Mixins, além implementar Interfaces ou extender outra classe. É um recurso muito util, pois
 * possibilita herança multipla.
 * 
 * A clausula "on" (opcional) limita o uso do Mixin apenas a classes que heardam de um tipo específico. Se a clausula "on" possuir mais classes,
 * o Mixin só pode ser usado em classes que herdam de TODOS os tipos declarados nesta clausula. 
 */
mixin Motorizado on Veiculo {

  bool _ligado = false;

  void ligarMotor() {
    if (_ligado) {
      print('O motor deste veículo ja está ligado!');
      return;
    }

    print('Ligando motor...');
    _ligado = true;
    print('Motor ligado');
  }

}

class Veiculo {
}