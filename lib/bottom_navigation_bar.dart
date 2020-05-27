import 'package:flutter/material.dart';

class LDBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
