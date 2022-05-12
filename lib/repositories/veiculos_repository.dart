import 'package:tcc/models/motorista.dart';
import 'package:tcc/models/veiculo.dart';
import 'package:flutter/material.dart';

class VeiculosRepository {
  final List<Veiculo> _veiculo = [];

  get veiculos => this._veiculo;

  void addMotorista({required Veiculo veiculo, required Motorista motorista}) {
    veiculo.motoristas.add(motorista);
  }

  VeiculosRepository() {
    _veiculo.addAll([
      Veiculo(
          nome: 'Onix',
          placa: 'IGH-4533',
          imagem: Image.asset('assets/images/onix.png'),
          cor: Colors.red),
      Veiculo(
          nome: 'Spin',
          placa: 'ORG-7411',
          imagem: Image.asset('assets/images/spin.png'),
          cor: Colors.green),
    ]);
  }
}
