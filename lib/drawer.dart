import 'package:flutter/material.dart';
import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.shield,
              text: 'Ejemplo 1',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.imagen1)}),
          _buildDrawerItem(
              icon: Icons.car_rental,
              text: 'Ejemplo 2',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.imagen2)}),
          _buildDrawerItem(
              icon: Icons.cabin,
              text: 'Ejemplo 3',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.imagen3)}),
          _buildDrawerItem(
              icon: Icons.wallet,
              text: 'Ejemplo 4',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.imagen4)}),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Ejemplos del video",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
