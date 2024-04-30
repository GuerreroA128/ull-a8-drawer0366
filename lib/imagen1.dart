import 'package:flutter/material.dart';
import 'package:guerrero0366/drawer.dart';

class Imagen1 extends StatelessWidget {
  static const String routeName = '/imagen1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Imagen 1"),
        backgroundColor: Colors.blue,
      ),
      drawer: DrawerMenu(),
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 5),
            borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        child: Image.asset('assets/avatar.png'),
      ),
    );
  }
}
