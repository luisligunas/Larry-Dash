import 'package:flutter/material.dart';

class LDBottomNavigationBar extends StatefulWidget {
  @override
  _LDBottomNavigationBarState createState() => _LDBottomNavigationBarState();
}

class _LDBottomNavigationBarState extends State<LDBottomNavigationBar> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _index,
      onTap: (int index) {
        setState(() {
          this._index = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text(""),
        ),
      ],
    );
  }
}
