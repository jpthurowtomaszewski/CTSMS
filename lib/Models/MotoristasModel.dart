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
    required this.geoLocal,
  });

  ObjectId id;
  String nomeMotorista;
  String telefoneMotorista;
  String matriculaMotorista;
  String veiculoAtual;
  String geoLocal;

  factory MotoristasModel.fromJson(Map<String, dynamic> json) =>
      MotoristasModel(
        id: json["_id"],
        nomeMotorista: json["nomeMotorista"],
        telefoneMotorista: json["telefoneMotorista"],
        matriculaMotorista: json["matriculaMotorista"],
        veiculoAtual: json["veiculoAtual"],
        geoLocal: json["geoLocal"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "nomeMotorista": nomeMotorista,
        "telefoneMotorista": telefoneMotorista,
        "matriculaMotorista": matriculaMotorista,
        "veiculoAtual": veiculoAtual,
        "geoLocal": geoLocal,
      };
}
