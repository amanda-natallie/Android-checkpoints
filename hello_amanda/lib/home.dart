import "package:flutter/material.dart";

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Amanda"),
        centerTitle: true,
      ),

      body: Container(
        child: Center(
          child: Text("Seja bem-vinda Amanda",
            style: TextStyle(
                fontSize: 30,
                  color: Colors.green,
            ),
          ),
        ),
      ),
      drawer: Container(
        color: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: const Icon(Icons.thumb_up),
        backgroundColor: Colors.black87,
      ),
    );
  }
}
