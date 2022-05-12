import 'package:flutter/cupertino.dart';

import 'motorista.dart';

class Veiculo {
  String nome;
  Image imagem;
  String placa;
  Color cor;
  List<Motorista> motoristas = [];

  Veiculo(
      {required this.imagem,
      required this.nome,
      required this.placa,
      required this.cor});
}
