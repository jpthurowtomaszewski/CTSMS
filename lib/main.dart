import 'pages/home_gestores.dart';
import 'package:flutter/material.dart';

void main() {
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
        home: HomeGestores());
  }
}
