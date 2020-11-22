import 'package:flutter/material.dart';

class AramaSayfa extends StatelessWidget {
  AramaSayfa(Key k) : super(key: k);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemExtent: 300,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Material(
              elevation: 6,
              borderRadius: BorderRadius.circular(10),
              color:
                  index % 2 == 0 ? Colors.orange.shade200 : Colors.red.shade200,
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          );
        });
  }
}
