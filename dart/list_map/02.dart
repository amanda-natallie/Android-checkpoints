void main() {

/*
1. Armazenar dez valores na memória do computador.
Após a digitação dos valores, criar uma rotina 
para ler os valores e achar e exibir o maior deles.

* */
  
  var soma = 0;
  
  final numeros = [1,2,3,33,5,7,8,9,10];
  
  for(int i = 9; i >= 0; i--){
    int maior = numeros[i];
  
    if(maior > soma){
      soma = maior;
    }
    
    if(i == 0){
      print("O maior valor é $soma");
    }
  }

}

