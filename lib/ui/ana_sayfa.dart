import 'package:flutter/material.dart';
import 'package:kisisel_tasarim/models/data.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa(Key k) : super(key: k);
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<Data> tumBilgiler;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumBilgiler = [
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
      Data("Biz Kimiz", "Biz Hiç KİMSEYİZ", false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          title: Text(tumBilgiler[index].baslik),
          initiallyExpanded: tumBilgiler[index].expanded,
          children: [
            Container(
              color: index % 2 == 0 ? Colors.orange : Colors.red,
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(tumBilgiler[index].icerik),
              ),
            )
          ],
        );
      },
      itemCount: tumBilgiler.length,
    );
  }
}
