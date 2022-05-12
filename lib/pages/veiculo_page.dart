import 'package:flutter/material.dart';
import '../models/veiculo.dart';
import 'add_motorista_page.dart';
import '../models/motorista.dart';

class VeiculoPage extends StatefulWidget {
  Veiculo veiculo;
  VeiculoPage({required Key key, required this.veiculo});

  @override
  _VeiculoPageState createState() => _VeiculoPageState();
}

class _VeiculoPageState extends State<VeiculoPage> {
  motoristaPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AddMotoristaPage(
            veiculo: widget.veiculo, onSave: this.addMotorista),
      ),
    );
  }

  addMotorista(Motorista motorista) {
    setState(() {
      widget.veiculo.motoristas.add(motorista);
    });

    Navigator.pop(context);

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Salvo com sucesso')));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: widget.veiculo.cor,
            title: Text(widget.veiculo.nome),
            actions: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: motoristaPage,
              )
            ],
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.description),
                text: "Dados",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Motoristas",
              ),
            ], indicatorColor: Colors.white)),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(24),
                  child: widget.veiculo.imagem,
                  //  child: Image.asset(widget.veiculo.imagem),
                ),
                Text(
                  'Modelo: ${widget.veiculo.nome}',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'Placa: ${widget.veiculo.placa}',
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
            motoristas(),
          ],
        ),
      ),
    );
  }

  Widget motoristas() {
    final quantidade = widget.veiculo.motoristas.length;

    return quantidade == 0
        ? Container(
            child: Center(
              child: Text('Nenhum motorista utilizando no momento'),
            ),
          )
        : ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              ListTile(
                leading: Icon(Icons.person),
                title: Text(widget.veiculo.motoristas[index].nome),
                trailing: Text(widget.veiculo.motoristas[index].matricula),
              );
              return widget;
            },
            separatorBuilder: (_, __) => Divider(),
            itemCount: quantidade,
          );
  }
}
