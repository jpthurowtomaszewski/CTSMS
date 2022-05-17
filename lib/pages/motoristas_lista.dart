import 'package:flutter/material.dart';
import 'package:tcc/pages/motoristas_create.dart';

class MotoristasLista extends StatefulWidget {
  MotoristasLista({Key? key}) : super(key: key);

  @override
  State<MotoristasLista> createState() => _MotoristasListaState();
}

class _MotoristasListaState extends State<MotoristasLista> {
  motoristasCreate() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MotoristasCreate(),
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
                        'Motoristas Cadastrados',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 30, left: 24, right: 24),
                      child: ElevatedButton(
                          onPressed: () => motoristasCreate(),
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
                                    'Adcionar Motorista',
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
