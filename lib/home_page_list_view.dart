import 'package:flutter/material.dart';
import 'tweet_model.dart';

class LDHomePageListView extends StatefulWidget {
  @override
  _LDHomePageListViewState createState() => _LDHomePageListViewState();
}

class _LDHomePageListViewState extends State<LDHomePageListView> {
  List<Tweet> _tweets = [
    "Hello, World!",
    "Larry Bird is the best Celtic.",
    "Dash is the coolest Incredible."
  ].map((text) => Tweet(text)).toList();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Text(
            _tweets[position].getText()
          ),
        );
      },
      itemCount: _tweets.length,
    );
  }
}