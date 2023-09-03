void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e amarela';
  String sabor = 'doce e azeda';
  int diasDeColheita = 40;
  bool isMadura = funcEstaMadura(diasDeColheita);
  print(isMadura);
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
