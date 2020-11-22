import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Mücahit Gökkaya"),
            accountEmail: Text("mucahitgokkaya@yahoo.com"),
            currentAccountPicture: Image.network(
                "https://st2.depositphotos.com/3867453/10635/v/950/depositphotos_106357936-stock-illustration-letter-m-logo-icon-design.jpg"),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("mg"),
              ),
              CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("sm"),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Ana Sayfa"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Ara"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Profil"),
                  trailing: Icon(Icons.chevron_right),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.teal,
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Profil"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
