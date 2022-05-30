import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MotoristasModel motoristasModelFromJson(String str) =>
    MotoristasModel.fromJson(json.decode(str));

String motoristasModelToJson(MotoristasModel data) =>
    json.encode(data.toJson());

class MotoristasModel {
  MotoristasModel({
    required this.id,
    required this.nomeMotorista,
    required this.telefoneMotorista,
    required this.matriculaMotorista,
    required this.veiculoAtual,
  });

  ObjectId id;
  String nomeMotorista;
  String telefoneMotorista;
  String matriculaMotorista;
  String veiculoAtual;

  factory MotoristasModel.fromJson(Map<String, dynamic> json) =>
      MotoristasModel(
        id: json["_id"],
        nomeMotorista: json["nomeMotorista"] ?? "vazio?",
        telefoneMotorista: json["telefoneMotorista"] ?? "vazio?",
        matriculaMotorista: json["matriculaMotorista"] ?? "vazio?",
        veiculoAtual: json["veiculoAtual"] ?? "vazio?",
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "nomeMotorista": nomeMotorista,
        "telefoneMotorista": telefoneMotorista,
        "matriculaMotorista": matriculaMotorista,
        "veiculoAtual": veiculoAtual,
      };
}
