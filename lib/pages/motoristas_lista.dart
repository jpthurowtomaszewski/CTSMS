// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tcc/Models/MotoristasModel.dart';
import 'package:tcc/dbHelper/mongodb.dart';
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
                  SizedBox(height: 15),
                  FutureBuilder(
                      future: MongoDatabase.getMotorista(),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          if (snapshot.hasData) {
                            //var parData = MongoDatabase.contarMotoristas();
                            //print("Todos dados" + parData.toString());
                            //var contador = MongoDatabase.contarMotoristas();

                            var totalData = snapshot.data.length;
                            print("Todos dados" + totalData.toString());
                            return ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: totalData,
                                itemBuilder: (context, index) {
                                  return displayCard(MotoristasModel.fromJson(
                                      snapshot.data[index]));
                                });
                          } else {
                            return Center(
                              child: Text("Não há dados disponíveis"),
                            );
                          }
                        }
                      }),
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

  Widget displayCard(MotoristasModel data) {
    return Card(
        color: Colors.grey,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 6, left: 14, right: 12, bottom: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return MotoristasCreate();
                                },
                                settings: RouteSettings(arguments: data)))
                        .then((value) {
                      setState(() {});
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text("${data.nomeMotorista}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start),
                      )
                    ],
                  )),
              IconButton(
                  onPressed: () async {
                    await MongoDatabase.delete(data);
                    setState(() {});
                  },
                  icon: Icon(Icons.delete))
            ],
          ),
        ));
  }
}
