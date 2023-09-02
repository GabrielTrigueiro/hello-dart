Este repositório é apenas um estudo de dart.

## Injetar valor em String
Para injetar algum falor na string se usa $ concatenado com o nome da variável, exemplo:

    const int idade = 21;
    print('Tenho $idade anos')

porém se o valor estiver dentro de um objeto e ele tiver que ser acessado mais internamente é necessário usar ${}:

    const int idade = 21;
    List<String> nomes = ['Gabriel', 'Lucas', 'Sofia'];
    print('O aluno ${nomes[0]} tem $idade anos')

## Variaveis

Variaveis podem dos tipos clássicos, String, int, double, boolean, etc... , para umva variavel ser usada em uma função
ela tem que ter sido declarada antes. Existem 3 formas de declarar uma variavel no dart, elas são: var, const e final.

### Var:

é usada para declarar variáveis que podem ter seu tipo inferido pelo Dart durante a compilação. O valor da variável pode
ser alterado após a atribuição inicial.

    var nome = 'Alice';
    nome = 'Bob'; // OK

### Const:

é usada para declarar constantes em tempo de compilação. Uma variável const não pode ser modificada após a atribuição
inicial e deve ser inicializada com um valor constante.

    const pi = 3.14159;
    const double raio = 5.0;

### Final:

é usada para declarar constantes, mas ao contrário de const, o valor de uma variável final pode ser definido em tempo de
execução e não precisa ser conhecido em tempo de compilação.

    final String sobrenome = 'Johnson';
    final DateTime dataAtual = DateTime.now();

## Listas

Listas são muito importantes assim como em qualquer linguagem, uma lista no dart pode ser declarada com um tipo: Lista<'
String'>, Lista<'Clientes'>, ou pode ser declarada com dados váriados como Lista<'dynamic'>.

### Para que usar lista dinamica se vai bagunçar meus dados?

- Uso de pacotes não tipados: Alguns pacotes ou bibliotecas externas podem não ser fortemente tipados, e usar listas
  dinâmicas pode ser necessário para interagir com esses pacotes.

- Integração com APIs dinâmicas: Quando você está trabalhando com APIs externas ou dados de terceiros que não têm uma
  estrutura de tipo estática bem definida, as listas dinâmicas permitem armazenar esses dados sem erros de compilação.

- Processamento genérico: Às vezes, você pode precisar criar funções genéricas que funcionem com diferentes tipos de
  dados. Nesse caso, você pode usar listas dinâmicas para receber argumentos de diferentes tipos e processá-los
  dinamicamente.

### Métodos importantes da estrutura List

- List.sublist(int: inicio, int: fim): retorna uma lista entre os index indicados.

      List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      // Criando uma sublista com os elementos de índice 2 a 5 (inclusive).
      List<int> subLista = numeros.sublist(2, 6);
    
      print(subLista); // Saída: [3, 4, 5, 6]
  
- List.foreach((elemento) {faça algo para cada elemento da lista})

      List<String> nomes = ['Alice', 'Bob', 'Charlie', 'David'];
    
      nomes.forEach((nome) {
        print('Olá, $nome!');
      });

- List.contains(elemento): retorna true ou false se a lista possui ou nao o elemento procurado.

      List<int> numeros = [1, 2, 3, 4, 5];
  
      bool contemTres = numeros.contains(3);
      bool contemSeis = numeros.contains(6);
  
      print(contemTres); // Saída: true
      print(contemSeis); // Saída: false
      

- List.reduce((value, element) => null): value vai ser retornado e o elemento é o elemento atual, basicamente o value vai ser um valor que você define que vai depender de algo dos elementos da lista.
      
      List<int> numeros = [1, 2, 3, 4, 5];
      int soma = numeros.reduce((valorAnterior, elemento) => valorAnterior + elemento);
    
      print(soma); // Saída: 15 (1 + 2 + 3 + 4 + 5)

- List.where((element) => sua condição): basicamente essa função retorna os elementos da lista que batem com a condição inserida.

      List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      List<int> numerosPares = numeros.where((numero) => numero % 2 == 0).toList();
    
      print(numerosPares); // Saída: [2, 4, 6, 8, 10]


## Loops

### For

    void main() {
      for (int i = 0; i < 5; i++) {
        print('Valor de i: $i');
      }
    }


### Foreach

    void main() {
      List<int> numeros = [1, 2, 3, 4, 5];
      numeros.forEach((numero) {
        print(numero);
      });
    }

### While

    void main() {
      int contador = 0;
      
      while (contador < 5) {
        print('Contador: $contador');
        contador++;
      }
    }

