// To parse this JSON data, do
//
//     final motoristasModel = motoristasModelFromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MotoristasModel motoristasModelFromJson(String str) =>
    MotoristasModel.fromJson(json.decode(str));

String motoristasModelToJson(MotoristasModel data) =>
    json.encode(data.toJson());

class MotoristasModel {
  MotoristasModel({
    required this.idMotorista,
    required this.nomeMotorista,
    required this.telefoneMotorista,
    required this.matriculaMotorista,
    required this.veiculoAtual,
  });

  ObjectId idMotorista;
  String nomeMotorista;
  String telefoneMotorista;
  String matriculaMotorista;
  String veiculoAtual;

  factory MotoristasModel.fromJson(Map<String, dynamic> json) =>
      MotoristasModel(
        idMotorista: json["_idMotorista"],
        nomeMotorista: json["nomeMotorista"],
        telefoneMotorista: json["telefoneMotorista"],
        matriculaMotorista: json["matriculaMotorista"],
        veiculoAtual: json["veiculoAtual"],
      );

  Map<String, dynamic> toJson() => {
        "_idMotorista": idMotorista,
        "nomeMotorista": nomeMotorista,
        "telefoneMotorista": telefoneMotorista,
        "matriculaMotorista": matriculaMotorista,
        "veiculoAtual": veiculoAtual,
      };
}
