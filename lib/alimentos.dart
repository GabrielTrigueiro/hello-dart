//trabalhando com herança
import 'package:hello_dart/bolo-polimorfo.dart';

class Alimento{
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void mostrarAlimento(){
    print('Nome: $nome\nPeso: $peso\nCor:$cor\n');
  }
}

//agora criando classes que vão herdar da classe mais genérica
class Legumes extends Alimento{
  bool precisaCozinhar;
  Legumes(String nome, double peso, String cor, this.precisaCozinhar):super(nome, peso, cor);

  void cozinhar(){
    !precisaCozinhar ? print('$nome já tá cozido') : print('$nome cozinhando');
  }
}

class Salgados extends Alimento{
  String carne;
  Salgados(String nome, double peso, String cor, this.carne):super(nome, peso, cor);
}

class Frutas extends Alimento implements Bolo{
  bool? isMadura;
  int diasDesdeColheita;
  Frutas(String nome, double peso, String cor, this.isMadura, this.diasDesdeColheita):super(nome, peso, cor);
  funcEstaMadura() {
    isMadura = diasDesdeColheita >= 30;
  }

  @override
  void separarIngredientes() {
    print('Catar a fruta');
  }
  @override
  void fazerMassa() {
    print('Misturar a fruta com farinha, açúcar, ovos...');
  }
  @override
  void assar() {
    print('Colocar no forno');
  }
}

main(){
  Legumes aspargo = Legumes('Aspargo', 0.2, 'verde', true);
  Salgados coxinha = Salgados('Coxinha', 0.3, 'Laranja', 'Frango');
  Frutas uva = Frutas('Uva', 0.1, 'Roxa', true, 30);

  aspargo.mostrarAlimento();
  coxinha.mostrarAlimento();
  uva.mostrarAlimento();
}