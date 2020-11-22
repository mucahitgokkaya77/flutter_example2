import 'package:flutter/material.dart';

class TabOrnek extends StatefulWidget {
  @override
  _TabOrnekState createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TAB KULLANIMI"),
        bottom: buildTabBar(),
      ),
      body: TabBarView(controller: tabController, children: [
        Container(
          color: Colors.grey,
          child: Center(child: Text("TAB 1")),
        ),
        Container(
          color: Colors.grey,
          child: Center(child: Text("TAB 2")),
        ),
        Container(
          color: Colors.grey,
          child: Center(child: Text("TAB 3")),
        )
      ]),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      controller: tabController,
      tabs: [
        Tab(
          icon: Icon(Icons.add),
          text: "Tab 1",
        ),
        Tab(
          icon: Icon(Icons.alarm),
          text: "Tab 2",
        ),
        Tab(
          icon: Icon(Icons.home),
          text: "Tab 3",
        ),
      ],
    );
  }
}
