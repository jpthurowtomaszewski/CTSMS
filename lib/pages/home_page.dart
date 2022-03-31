import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:tcc/pages/home_controller.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Veículos'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext contexto, int i) {
          final tabela = controller.tabela;
          return ListTile(
            //leading: Image.network(tabela[i].imagem),
            leading: Text(i.toString()),
            title: Text(tabela[i].nome),
            trailing: Text(tabela[i].placa.toString()),
          );
        },
        separatorBuilder: (_, __) => Divider(),
        padding: EdgeInsets.all(16),
        itemCount: controller.tabela.length,
      ),
    );
  }
}
