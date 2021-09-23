import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();
  String classificacao = "Classificação";

  void _imcCalculator() {
    setState(() {
      double valuePeso = double.parse(peso.text);
      double valueAltura = double.parse(altura.text);

      double imc = valuePeso / (valueAltura * valueAltura);

      if (imc < 18.5) {
        classificacao = "Abaixo do peso";
      } else if (imc >= 18.5 && imc <= 24.9) {
        classificacao = "Peso Normal";
      } else if (imc >= 25 && imc <= 29.9) {
        classificacao = "Sobrepeso";
      } else if (imc >= 30 && imc <= 34.9) {
        classificacao = "Obesidade Grau 1";
      } else if (imc >= 35 && imc <= 39.9) {
        classificacao = "Obesidade Grau 2";
      } else if (imc >= 40) {
        classificacao = "Obesidade Grau 3 ou Mórbida";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("IMC"),
      centerTitle: true,
      backgroundColor: Colors.purple,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _campo("Peso", peso),
          _campo("Altura", altura),
          _botao(),
          _texto(classificacao),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo),
      textAlign: TextAlign.left,
      controller: objController,
    );
  }

  _botao() {
    return Padding(
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Container(
            height: 50.0,
            child: RaisedButton(
              onPressed: _imcCalculator,
              child: Text("Verificar",
                  style: TextStyle(color: Colors.white)),
              color: Colors.purple,
            )));
  }

  _texto(textoParaExibir) {
    return Text(textoParaExibir,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.purple));
  }

}
