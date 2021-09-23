import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  String infoResultado = "";

  void _calcularAleatorio() {
    setState(() {
      int numero = new Random().nextInt(10);
      infoResultado = "$numero";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Jogo do N° Aleatório",
          style: TextStyle(color: Colors.red)),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _texto("Pense em um número de 0 a 10"),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _texto(labelText) {
    return Text(labelText,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.red, fontSize: 20.0));
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularAleatorio,
          child: Text("Adivinhe o numero",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.red,
        ),
      ),
    );
  }

}
