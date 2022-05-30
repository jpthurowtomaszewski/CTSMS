import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;
import 'package:tcc/Models/VeiculosModel.dart';

import '../dbHelper/mongodb.dart';

class VeiculosCreate extends StatefulWidget {
  VeiculosCreate({Key? key}) : super(key: key);

  @override
  State<VeiculosCreate> createState() => _VeiculosCreateState();
}

class _VeiculosCreateState extends State<VeiculosCreate> {
  var modeloController = new TextEditingController();
  var placaController = new TextEditingController();

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
                    'Cadastrar Veículo',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: modeloController,
                decoration: InputDecoration(labelText: "Modelo do Veículo"),
              ),
              TextField(
                controller: placaController,
                decoration: InputDecoration(labelText: "Placa"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _insertData(modeloController.text, placaController.text);
                  },
                  child: Text("Cadastrar"))
            ])),
      ),
    );
  }

  Future<void> _insertData(String modelo, String placa) async {
    var _id = M.ObjectId();
    var veiculo = "";
    final data = VeiculosModel(id: _id, modeloVeiculo: modelo, placa: placa);
    var result = await MongoDatabase.insertVeiculo(data);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("ID inserido: " + _id.$oid)));
    _clearAll();
  }

  void _clearAll() {
    modeloController.text = "";
    placaController.text = "";
  }
}
