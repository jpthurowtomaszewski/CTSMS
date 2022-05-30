import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

VeiculosModel veiculosModelFromJson(String str) =>
    VeiculosModel.fromJson(json.decode(str));

String veiculosModelToJson(VeiculosModel data) => json.encode(data.toJson());

class VeiculosModel {
  VeiculosModel({
    required this.id,
    required this.modeloVeiculo,
    required this.placa,
  });

  ObjectId id;
  String modeloVeiculo;
  String placa;

  factory VeiculosModel.fromJson(Map<String, dynamic> json) => VeiculosModel(
        id: json["_id"],
        modeloVeiculo: json["modeloVeiculo"],
        placa: json["placa"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "modeloVeiculo": modeloVeiculo,
        "placa": placa,
      };
}
