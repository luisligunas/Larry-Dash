import 'package:flutter/material.dart';
import 'package:larry_dash/bottom_navigation_bar.dart';

void main() {
  runApp(LarryDash());
}

class LarryDash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: LDBottomNavigationBar(),
      ),
    );
  }
}
