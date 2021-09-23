void main() {
// Entrar via teclado com o valor de uma temperatura em graus Celsius, 
//calcular e exibir sua temperatura equivalente em Fahrenheit.
//(3 °C × 9/5) + 32

  double graus = 34;
  double fahrenheitTransformation(graus){
    
    var fahrenheit = (graus* (9/5) + 32);
    
    return fahrenheit;
  };
    
  var fihren = fahrenheitTransformation(graus);
  
  print("$graus° em Fahrenheit é igual a: $fihren");
}