// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;
import 'package:tcc/Models/MotoristasModel.dart';

import '../dbHelper/mongodb.dart';

class MotoristasCreate extends StatefulWidget {
  MotoristasCreate({Key? key}) : super(key: key);

  @override
  State<MotoristasCreate> createState() => _MotoristasCreateState();
}

class _MotoristasCreateState extends State<MotoristasCreate> {
  var nomeController = new TextEditingController();
  var telefoneController = new TextEditingController();
  var matriculaController = new TextEditingController();

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
            child: Column(children: [
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Cadastrar Motorista',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: nomeController,
                decoration: InputDecoration(labelText: "Nome do Motorista"),
              ),
              TextField(
                controller: telefoneController,
                decoration: InputDecoration(labelText: "Telefone"),
              ),
              TextField(
                controller: matriculaController,
                decoration: InputDecoration(labelText: "Matrícula"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _insertData(nomeController.text, telefoneController.text,
                        matriculaController.text);
                  },
                  child: Text("Cadastrar"))
            ])),
      ),
    );
  }

  Future<void> _insertData(
      String nome, String telefone, String matricula) async {
    var _id = M.ObjectId();
    var veiculo = "";
    final data = MotoristasModel(
        idMotorista: _id,
        nomeMotorista: nome,
        telefoneMotorista: telefone,
        matriculaMotorista: matricula,
        veiculoAtual: veiculo);
    var result = await MongoDatabase.insertMotorista(data);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("ID inserido: " + _id.$oid)));
    _clearAll();
  }

  void _clearAll() {
    nomeController.text = "";
    telefoneController.text = "";
    matriculaController.text = "";
  }
}
