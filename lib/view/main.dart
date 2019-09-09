import 'package:flutter/material.dart';
import 'package:flutter_app/view/widget/BottomNavigationWidget.dart';
import 'package:flutter_app/view/widget/DrawerWidget.dart';
import 'package:flutter_app/view/widget/ListViewWidget.dart';

import 'BasicDemo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white60),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            '列表',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () => debugPrint('search is press!')),
            IconButton(
                icon: Icon(Icons.more_horiz),
                tooltip: 'more_horiz',
                onPressed: () => debugPrint('more_horiz is press!')),
          ],
          elevation: 1.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.videocam)),
              Tab(icon: Icon(Icons.description)),
              Tab(icon: Icon(Icons.home)),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          ListViewWidget(),
//          Icon(Icons.description, size: 150.0, color: Colors.black12),
          BasicDemo(),
          Icon(Icons.home, size: 150.0, color: Colors.black12),
        ]),
        drawer: DrawerWidget(),
        bottomNavigationBar: BottomNavigationWidget(),
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: Text(
        'Test',
        style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
        ),
      ),
    );
  }
}
