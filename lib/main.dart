import 'package:flutter/material.dart';
import 'package:larry_dash/bottom_navigation_bar.dart';
import 'package:larry_dash/home_page_list_view.dart';
import 'package:larry_dash/top_navigation_bar.dart';

void main() {
  runApp(LarryDash());
}

class LarryDash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: LDBottomNavigationBar(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              LDTopNavigationBar(),
              Expanded(child: LDHomePageListView()),
            ],
          ),
        ),
      ),
    );
  }
}
