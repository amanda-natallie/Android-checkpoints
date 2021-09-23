void main() {
//Entrar via teclado com o valor de cinco produtos. Após as entradas, digitar um valor referente ao
//pagamento da somatória destes valores. Calcular e exibir o troco que deverá ser devolvido.
  
double produto1 = 1;
double produto2 = 1;
double produto3 = 1;
double produto4 = 1;
double produto5 = 1;
 
double pagamentoCliente = 10;
  
 double calculoTroco(num1,num2,num3,num4,num5, pagamentoCliente){
   double soma = produto1+produto2+produto3+produto4+produto5;
   
   double troco = pagamentoCliente - soma;
   
   return troco;
 }
  
  double total = calculoTroco(produto1,produto2,produto3,produto4,produto5, pagamentoCliente);
  
  print("O troco é de: $total reais");
  
}