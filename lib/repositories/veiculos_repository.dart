import 'package:tcc/models/motorista.dart';
import 'package:tcc/models/veiculo.dart';
import 'package:flutter/material.dart';

class VeiculosRepository {
  final List<Veiculo> _veiculo = [];

  get veiculos => this._veiculo;

  void addVeiculo({required Veiculo veiculo, required Motorista motorista}) {
    veiculo.motoristas.add(motorista);
  }
}
