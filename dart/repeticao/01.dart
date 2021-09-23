void main() {
//Entrar via teclado com um valor qualquer. Após a digitação, exibir a tabuada do valor solicitado, no intervalo de um a dez.

  double valor = 6;
  for (int i = 10; i > 0; i--) {
    double total = valor * i;
    print("$valor X $i = $total");
  }
}
