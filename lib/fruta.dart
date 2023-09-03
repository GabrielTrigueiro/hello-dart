//criando uma classe pra de fruta
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  funcEstaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
  }
}

main() {
  Fruta fruta1 = Fruta('Melancia', 3.34, 'Verde', 'doce', 30);
  print(fruta1.cor);
}
