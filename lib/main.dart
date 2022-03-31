//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tcc/pages/home_page.dart';

void main() {
  runApp(CTSMS());
}

class CTSMS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motoristas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomePage(),
    );
  }
}
