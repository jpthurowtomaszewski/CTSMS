// To parse this JSON data, do
//
//     final veiculosModel = veiculosModelFromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

VeiculosModel veiculosModelFromJson(String str) =>
    VeiculosModel.fromJson(json.decode(str));

String veiculosModelToJson(VeiculosModel data) => json.encode(data.toJson());

class VeiculosModel {
  VeiculosModel({
    required this.idVeiculo,
    required this.modeloVeiculo,
    required this.placa,
  });

  ObjectId idVeiculo;
  String modeloVeiculo;
  String placa;

  factory VeiculosModel.fromJson(Map<String, dynamic> json) => VeiculosModel(
        idVeiculo: json["_idVeiculo"],
        modeloVeiculo: json["modeloVeiculo"],
        placa: json["placa"],
      );

  Map<String, dynamic> toJson() => {
        "_idVeiculo": idVeiculo,
        "modeloVeiculo": modeloVeiculo,
        "placa": placa,
      };
}
