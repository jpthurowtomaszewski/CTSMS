// ignore_for_file: prefer_const_constructors

import 'package:tcc/dbHelper/mongodb.dart';
import 'package:tcc/pages/home_page.dart';

import 'pages/home_gestores.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(CtsmsApp());
}

class CtsmsApp extends StatelessWidget {
  const CtsmsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CTSMS',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.grey,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: HomePage());
  }
}
