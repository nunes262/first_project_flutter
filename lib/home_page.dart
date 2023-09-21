//os dois sao entendidos pela memoria do mesmo jeito, ou seja, nenhum dos dois metodos nn pesa na memoria
//É possivel a alteracao de algumas coisas enquanto o aplicativo esta rodando
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int contado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        width: 100,
        height: 100,
        color: const Color.fromARGB(255, 56, 56, 56),
        child: Center(
          child: Container(
            width: 50,
            height: 50,
            color: const Color.fromARGB(255, 8, 72, 124),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            contado++;
          });
        },
      ),
    );
  }
}
