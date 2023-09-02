export 'src/hello_dart_base.dart';

//variaveis nao podem ser indefinidas
//se eu quiser usar uma var em uma func a var deve ser instanciada antes da func
void main() {
  int idade = 21;
  double altura = 1.72;
  bool maiorDeIdade;
  int energia = 100;
  String nome = 'Gabriel Trigueiro';
  String apelido = 'Ayza (Ayzalith)';
  String frase = 'Eu sou $apelido\n'
      'mas meu nome completo é $nome\n'
      'tenho $altura de altura e $idade anos\n'
      'atualmente sou estudante universitário sem emprego';

  print(frase);

  //listas tem tipos definidos ou dinâmicos
  List<String> listaDeNomes = [
    'Richard',
    'Natália',
    'Alex',
    'Gabriel',
    'David',
    'Nicolas'
  ];
  List<dynamic> gabrielInfos = [21, 1.72, 'Gabriel Trigueiro', 'Ayza'];
  print(listaDeNomes);
  print(gabrielInfos);

  String fraseUsandoLista =
      'nome:${gabrielInfos[2]} idade:${gabrielInfos[0]} apelido:${gabrielInfos[3]}';
  print(fraseUsandoLista);

  //testando condições
  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }
  print(maiorDeIdade);

  //testando o for
  for (int i = 0; i < 2; i++) {print(i);}

  //testando o while
  // while(energia > 0) {
  //   print('repetição');
  //   energia -= 10;
  // }
  // do {
  //   '...'
  // }
}
