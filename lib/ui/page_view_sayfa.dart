import 'package:flutter/material.dart';

class PageViewOrnek extends StatefulWidget {
  @override
  _PageViewOrnekState createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {
  var myController =
      PageController(initialPage: 0, viewportFraction: 1, keepPage: true);
  bool yatayEksen = true;
  bool pageSnaping = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection:
                yatayEksen == true ? Axis.horizontal : Axis.vertical,
            reverse: false,
            controller: myController,
            pageSnapping: pageSnaping,
            onPageChanged: (index) {
              debugPrint("on change gelen index $index");
            },
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.teal.shade200,
                child: Center(
                  child: Column(
                    children: [
                      Text("SAYFA 0"),
                      RaisedButton(
                        onPressed: () {
                          myController.jumpToPage(2);
                        },
                        child: Text("İKİNCİ SYAFAYA GİT"),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.teal.shade400,
                child: Center(
                  child: Text("SAYFA 1"),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.teal.shade600,
                child: Center(
                  child: Text("SAYFA 2"),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Text("Yatay Eksene Geç"),
                      Checkbox(
                          value: yatayEksen,
                          onChanged: (b) {
                            setState(() {
                              yatayEksen = b;
                            });
                          })
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Text("PAGESNAPİNG"),
                      Checkbox(
                          value: pageSnaping,
                          onChanged: (b) {
                            setState(() {
                              pageSnaping = b;
                            });
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
