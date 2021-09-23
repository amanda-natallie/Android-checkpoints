void main() {
//Calcular e exibir a área de um retângulo, a partir dos valores da base e altura que serão digitados. 
//Se a área for maior que 100, exibir a mensagem “Terreno grande”, caso contrário, 
//exibir a mensagem “Terreno pequeno”.
  
  double base = 6;
  double altura = 6;
    
  double area = base/altura;
  
  if(area > 100){
    print("Terreno Grande");
  }else{
    print("Tereno Pequeno");
  }
}