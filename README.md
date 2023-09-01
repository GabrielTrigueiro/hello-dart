Este repositório é apenas um estudo de dart.

## Variaveis
Variaveis podem dos tipos clássicos, String, int, double, boolean, etc... , para umva variavel ser usada em uma função ela tem que ter sido declarada antes. Existem 3 formas de declarar uma variavel no dart, elas são: var, const e final.

### Var:
é usada para declarar variáveis que podem ter seu tipo inferido pelo Dart durante a compilação. O valor da variável pode ser alterado após a atribuição inicial.

    var nome = 'Alice';
    nome = 'Bob'; // OK
### Const:
é usada para declarar constantes em tempo de compilação. Uma variável const não pode ser modificada após a atribuição inicial e deve ser inicializada com um valor constante.

    const pi = 3.14159;
    const double raio = 5.0;
### Final:
é usada para declarar constantes, mas ao contrário de const, o valor de uma variável final pode ser definido em tempo de execução e não precisa ser conhecido em tempo de compilação.

    final String sobrenome = 'Johnson';
    final DateTime dataAtual = DateTime.now();

