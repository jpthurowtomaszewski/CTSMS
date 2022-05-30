import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:tcc/Models/MotoristasModel.dart';
import 'package:tcc/Models/VeiculosModel.dart';
import 'package:tcc/dbHelper/constant.dart';

class MongoDatabase {
  static var db, userCollection;
  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    //inspect(db);
    userCollection = db.collection(USER_COLLECTION);
  }

  static Future<List<Map<String, dynamic>>> getMotorista() async {
    final arrDataMotorista = await userCollection
        .find(where.fields([
          'nomeMotorista',
          'telefoneMotorista',
          'matriculaMotorista',
          'veiculoAtual'
        ]))
        .toList();
    return arrDataMotorista;
  }

  //static Future<int> contarMotoristas() async {
  //  var contador =
  //      await userCollection.find.count(where.fields(['nomeMotorista']));
  //  return contador;
  //}

  static Future<List<Map<String, dynamic>>> getVeiculo() async {
    final arrDataVeiculo = await userCollection
        .find(where.fields(['modeloVeiculo', 'placa']))
        .toList();
    return arrDataVeiculo;
  }

  static Future<String> insertMotorista(MotoristasModel data) async {
    try {
      var result = await userCollection.insertOne(data.toJson());
      if (result.isSuccess) {
        return "Dados Inseridos";
      } else {
        return "Algo deu errado enquanto inseria os dados";
      }
    } catch (e) {
      print(e.toString());
      return e.toString();
    }
  }

  static Future<String> insertVeiculo(VeiculosModel data) async {
    try {
      var result = await userCollection.insertOne(data.toJson());
      if (result.isSuccess) {
        return "Dados Inseridos";
      } else {
        return "Algo deu errado enquanto inseria os dados";
      }
    } catch (e) {
      print(e.toString());
      return e.toString();
    }
  }
}
