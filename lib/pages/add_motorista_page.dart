import 'package:flutter/material.dart';
import 'package:tcc/models/motorista.dart';
import '../models/veiculo.dart';
import '../models/motorista.dart';

class AddMotoristaPage extends StatefulWidget {
  Veiculo veiculo;
  ValueChanged<Motorista> onSave;

  AddMotoristaPage({Key? key, required this.veiculo, required this.onSave})
      : super(key: key);

  @override
  _AddMotoristaPageState createState() => _AddMotoristaPageState();
}

class _AddMotoristaPageState extends State<AddMotoristaPage> {
  final _nome = TextEditingController();
  final _matricula = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Motorista'),
      ),
      body: Form(
        key: _formkey,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.all(24),
              child: TextFormField(
                controller: _nome,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Nome'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe o Nome do motorista!';
                  }
                },
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: TextFormField(
                controller: _matricula,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Matricula'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe a matrícula do motorista!';
                  }
                },
              ))
        ]),
      ),
    );
  }
}
