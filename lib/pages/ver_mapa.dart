// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tcc/pages/info_motorista.dart';

class VerMapa extends StatefulWidget {
  VerMapa({Key? key}) : super(key: key);

  @override
  State<VerMapa> createState() => _VerMapaState();
}

class _VerMapaState extends State<VerMapa> {
  infoMotorista() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => InfoMotorista(),
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
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 30, left: 24, right: 24),
                      child: ElevatedButton(
                          onPressed: () => infoMotorista(),
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
                                    'Ping do Motorista',
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
