// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tcc/pages/motoristas_lista.dart';
import 'package:tcc/pages/veiculos_lista.dart';
import 'package:tcc/pages/ver_mapa.dart';

class HomeGestores extends StatefulWidget {
  HomeGestores({Key? key}) : super(key: key);
  @override
  State<HomeGestores> createState() => _HomeGestoresState();
}

class _HomeGestoresState extends State<HomeGestores> {
  verMapa() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VerMapa(),
      ),
    );
  }

  veiculosLista() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VeiculosLista(),
      ),
    );
  }

  motoristasLista() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MotoristasLista(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CTSMS',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          actions: const [
            IconButton(
              padding: EdgeInsets.all(18),
              icon: Icon(Icons.login),
              tooltip: 'Sair',
              onPressed: null,
            ),
          ],
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Gestão',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 30, left: 24, right: 24),
                      child: ElevatedButton(
                          onPressed: () => verMapa(),
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
                                    'Ver no Mapa',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ))),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 10, left: 24, right: 24),
                      child: ElevatedButton(
                          onPressed: () => veiculosLista(),
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
                                    'Veículos',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ))),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 10, left: 24, right: 24),
                      child: ElevatedButton(
                          onPressed: () => motoristasLista(),
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
                                    'Motoristas',
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
