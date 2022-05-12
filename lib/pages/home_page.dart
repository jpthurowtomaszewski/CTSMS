import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tcc/models/veiculo.dart';
import 'package:tcc/pages/veiculo_page.dart';
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
        itemBuilder: (BuildContext contexto, int veiculo) {
          final List<Veiculo> tabela = controller.tabela;
          return ListTile(
            //leading: Image.asset(tabela[veiculo].imagem),
            leading: tabela[veiculo].imagem,
            title: Text(tabela[veiculo].nome),
            trailing: Text(tabela[veiculo].placa.toString()),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => VeiculoPage(
                          key: Key(tabela[veiculo].nome),
                          veiculo: tabela[veiculo])));
            },
          );
        },
        separatorBuilder: (_, __) => Divider(),
        padding: EdgeInsets.all(16),
        itemCount: controller.tabela.length,
      ),
    );
  }
}
