// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tcc/pages/veiculos_create.dart';

class VeiculosLista extends StatefulWidget {
  VeiculosLista({Key? key}) : super(key: key);

  @override
  State<VeiculosLista> createState() => _VeiculosListaState();
}

class _VeiculosListaState extends State<VeiculosLista> {
  veiculosCreate() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VeiculosCreate(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CTSMS',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          /*actions: const [
          IconButton(
            padding: EdgeInsets.all(18),
            icon: Icon(Icons.arrow_back),
            tooltip: 'Voltar',
            onPressed: null,
          ),
        ],*/
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Veículos Cadastrados',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 30, left: 24, right: 24),
                      child: ElevatedButton(
                          onPressed: () => veiculosCreate(),
                          style: ButtonStyle(backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (states) {
                            return Colors.black;
                          })),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    'Adcionar Veículo',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ))),
                ],
              )),
        ));
  }
}
