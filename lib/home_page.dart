//os dois sao entendidos pela memoria do mesmo jeito, ou seja, nenhum dos dois metodos nn pesa na memoria
//É possivel a alteracao de algumas coisas enquanto o aplicativo esta rodando
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

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
        actions: [SwitchComponent()],
      ),
      body: Center(child: SwitchComponent()),
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

class SwitchComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
