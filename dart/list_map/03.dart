void main() {

/*
Armazenar vinte valores em um vetor. 
Após a digitação, entrar com uma constante multiplicativa 
que deverá multiplicar 
cada um dos valores do vetor e armazenar o resultado no próprio vetor, 
na respectiva posição.

* */
  
  
  final numeros = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
  var multiplicar = 2;
  final numerosArmazenar = [];
  
  
  
  for(int i = 0; i < numeros.length; i++){
    int novoNumero = numeros[i] * multiplicar;
    numerosArmazenar.add(novoNumero);
    
  }
   
  numeros.removeRange(0,20);
  
  for(int i = 0; i < numerosArmazenar.length; i++){
    numeros.add(numerosArmazenar[i]);
  }
  
  print("O novo array é: ");
  print(numeros);
}

