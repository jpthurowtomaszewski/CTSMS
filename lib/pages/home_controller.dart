//import 'dart:html';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // precisa para poder usar Colors.
//import 'home_page.dart';

import '../models/veiculo.dart';
import '../models/motorista.dart';
import '../repositories/veiculos_repository.dart';

class HomeController {
  late VeiculosRepository veiculosRepository;

  List<Veiculo> get tabela => veiculosRepository.veiculos;

  HomeController() {
    veiculosRepository = VeiculosRepository();
  }
}
