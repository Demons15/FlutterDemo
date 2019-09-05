import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationState();
  }
}

class _BottomNavigationState extends State<BottomNavigationWidget> {
  int currentIndex = 0;

  void onTabChange(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabChange,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), title: Text('explore')),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text('history')),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('list')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home'))
        ]);
  }
}
