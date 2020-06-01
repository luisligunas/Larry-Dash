import 'package:flutter/material.dart';
import 'package:larry_dash/tweet_model.dart';

class TweetListViewItem extends StatefulWidget {
  final Tweet tweet;

  TweetListViewItem({this.tweet});

  @override
  _TweetListViewItemState createState() => _TweetListViewItemState();
}

class _TweetListViewItemState extends State<TweetListViewItem> {
  @override
  Widget build(BuildContext context) {
    Tweet tweet = widget.tweet;

    return Card(
      child: Text(
        tweet.getText()
      ),
    );
  }
}