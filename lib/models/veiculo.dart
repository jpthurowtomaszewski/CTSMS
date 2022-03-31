import 'package:flutter/cupertino.dart';

import 'motorista.dart';

class Veiculo {
  String nome;
  String imagem;
  String placa;
  late Color cor;
  List<Motorista> motoristas = [];

  Veiculo({required this.imagem, required this.nome, required this.placa});
}
