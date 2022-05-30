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
    inspect(db);
    userCollection = db.collection(USER_COLLECTION);
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
