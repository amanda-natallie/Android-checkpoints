void main() {
/*
 * Exibir os trinta primeiros valores da série de Fibonacci. 
 * A série: 1, 1, 2, 3, 5, 8, ...
 * */
  //Fn = fn-1 + Fn-2

  int anterior = 0;
  int proximo = 0;

  int cont = 0;

  while (cont < 30) {
    print(proximo);
    proximo = proximo + anterior;
    anterior = proximo - anterior;

    if (proximo == 0) {
      proximo = proximo + 1;
    }

    cont++;
  }
}
