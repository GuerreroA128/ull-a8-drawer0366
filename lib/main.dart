import 'package:flutter/material.dart';
import 'package:guerrero0366/imagen1.dart';
import 'package:guerrero0366/imagen2.dart';
import 'package:guerrero0366/imagen3.dart';
import 'package:guerrero0366/imagen4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String imagen1 = Imagen1.routeName;
  static const String imagen2 = Imagen2.routeName;
  static const String imagen3 = Imagen3.routeName;
  static const String imagen4 = Imagen4.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        imagen1: (context) => Imagen1(),
        imagen2: (context) => Imagen2(),
        imagen3: (context) => Imagen3(),
        imagen4: (context) => Imagen4(),
      },
      home: Imagen1(),
    );
  }
}
