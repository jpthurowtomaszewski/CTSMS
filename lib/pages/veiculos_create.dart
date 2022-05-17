import 'package:flutter/material.dart';

class VeiculosCreate extends StatefulWidget {
  VeiculosCreate({Key? key}) : super(key: key);

  @override
  State<VeiculosCreate> createState() => _VeiculosCreateState();
}

class _VeiculosCreateState extends State<VeiculosCreate> {
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
          child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Cadastrar Veículo',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}
