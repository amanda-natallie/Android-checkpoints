void main() {
/*
 *A partir dos valores da aceleração (a em m/s), da velocidade inicial (v0 em m/s) e do tempo de percurso
(t em s).
Calcular e exibir a velocidade final de automóvel em km/h. Exibir mensagem de acordo com a
tabela:
*
* m/s: V = v0 + a. t
*
*/
  
  double a = 12;
  double velocidadeInicial = 10;
  double tempo = 3;
  
  double velocidade = velocidadeInicial + a * tempo;
  print("Sua velocidade é de: $velocidade km/h");
  if(velocidade < 40){
    print("Veículo muito lento");

  }
  if(40 < velocidade && velocidade <= 60){
    print("Velocidade permitida");

  }
  if(60 < velocidade && velocidade <= 80){
    print("Velocidade de cruzeiro");

  }
  if(80 < velocidade && velocidade <= 120){
    print("Veículo rápido");

  }
  if(velocidade > 120){
    print("Veículo muito rápido");

  }

}