void main() {
  // Quando for invocar um "Constant Constructor", é possivel criar uma variável com a keyword "const"
  const coordenadas = CoordenadasImutaveis(-28.2769968, -49.1728871);
  print(coordenadas);
}

class CoordenadasImutaveis {

    final double latitude;
    final double longitude;

    /*
     * Para objetos imutáveis, é possivel definir um "Constant Constructor".
     * Isto faz com o objeto ser uma constante em tempo de compilação
     * 
     * OBS.: A ordem dos parâmetros segue a mesma ordem das propriedades da classe
     * e os atributos de classe devem ser "final".
     */
    const CoordenadasImutaveis(this.latitude, this.longitude);
}