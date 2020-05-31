import 'package:flutter/material.dart';
import 'top_navigation_bar.dart';
import 'home_page_list_view.dart';

class LDBottomNavigationBarController extends StatefulWidget {
  @override
  _LDBottomNavigationBarControllerState createState() =>
      _LDBottomNavigationBarControllerState();
}

class _LDBottomNavigationBarControllerState extends State<LDBottomNavigationBarController> {
  int _index = 0;
  
  final List<Widget> _tabPages = [
    LDHomePageListView(
      key: PageStorageKey('home_page'),
    ),
    Text(
      'Search Page',
      key: PageStorageKey('search_page'),
    ),
    Text(
      'Notifications Page',
      key: PageStorageKey('notifications_page'),
    ),
    Text(
      'Messages Page',
      key: PageStorageKey('messages_page'),
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            LDTopNavigationBar(),
            Expanded(child: 
              PageStorage(
                child: _tabPages[_index],
                bucket: bucket,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar() {
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
