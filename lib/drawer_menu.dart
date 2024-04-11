import 'package:flutter/material.dart';

import 'package:correadrawerv2/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceEvenly;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Row centrado Correa 0347',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.inicio)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Row start(izquierda)',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Row end(derecha)',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.movies)}),
          _buildDrawerItem(
              icon: Icons.label,
              text: 'SpaceEvenly',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.spaceEvenly)}),
          _buildDrawerItem(
              icon: Icons.crisis_alert,
              text: 'SpaceAround',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.spaceAround)}),
          _buildDrawerItem(
              icon: Icons.hotel_class_outlined,
              text: 'SpaceBetween',
              onTap: () => {
                    Navigator.pushReplacementNamed(context, MyApp.spaceBetween)
                  }),
          Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'End',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.end)}),
          ListTile(
            title: Text('hola'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.jpeg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Drawer Correa 0347",
                  style: TextStyle(
                      color: Color(0xffffffff),
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
