import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kisisel_tasarim/ui/ana_sayfa.dart';
import 'package:kisisel_tasarim/ui/arama_sayfa.dart';
import 'package:kisisel_tasarim/ui/drawer_menu.dart';
import 'package:kisisel_tasarim/ui/page_view_sayfa.dart';
import 'package:kisisel_tasarim/ui/tab_ornek.dart';

void main() {
  runApp(AnaDegerler());
}

class AnaDegerler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kişisel Tasarım",
      theme: ThemeData(
          primarySwatch: Colors.indigo, accentColor: Colors.orangeAccent),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int secilenMenuItem = 0;
  List<Widget> tumSayfalar = [];
  PageViewOrnek pageViewOrnek;
  AnaSayfa sayfaAna;
  AramaSayfa sayfaArama;
  var keyAnaSayfa = PageStorageKey("key ana sayfa");
  var keyArama = PageStorageKey("key arama sayfa");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfaAna = AnaSayfa(keyAnaSayfa);
    sayfaArama = AramaSayfa(keyArama);
    pageViewOrnek = PageViewOrnek();
    tumSayfalar = [sayfaAna, sayfaArama, pageViewOrnek];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Kişisel Tasarım"),
      ),
      body: tumSayfalar[secilenMenuItem],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  BottomNavigationBar bottomNavMenu() {
    return BottomNavigationBar(
      items: [
        // ignore: deprecated_member_use
        BottomNavigationBarItem(
            // ignore: deprecated_member_use
            icon: Icon(Icons.home),
            title: Text("Ana Sayfa")),
        BottomNavigationBarItem(
            // ignore: deprecated_member_use
            icon: Icon(Icons.search),
            title: Text("Ara")),
        // ignore: deprecated_member_use
        BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("Ekle")),
        // ignore: deprecated_member_use
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box), title: Text("Profil")),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: secilenMenuItem,
      onTap: (index) {
        setState(() {
          secilenMenuItem = index;
          if (index == 3) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TabOrnek()))
                .then((bb) => secilenMenuItem = 0);
          }
        });
      },
    );
  }
}
