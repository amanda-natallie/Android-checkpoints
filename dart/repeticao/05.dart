void main() {
/*
 * Calcular e exibir a soma dos “N” primeiros valores da seqüência abaixo. 
 * O valor “N” será digitado, deverá ser positivo, mas menor que cem. 
 * Caso o valor não satisfaça a restrição, enviar mensagem de erro e 
 * solicitar o valor novamente.
A seqüência: 2, 5, 10, 17, 26, ....

 * */

  double n = 22;
  int soma = 0;

  int quantidadeDeValores = 5;

  if (n > 0 && n < 100) {
    for (int i = 0; i < quantidadeDeValores; i++) {
      soma = soma + i;

      print(soma);
    }
  } else {
    print("Error: Escreva outro número");
  }
}
