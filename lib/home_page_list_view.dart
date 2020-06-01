import 'package:flutter/material.dart';
import 'package:larry_dash/home_page_tweet_list_view_item.dart';
import 'package:larry_dash/user_model.dart';
import 'tweet_model.dart';

class LDHomePageListView extends StatefulWidget {
  const LDHomePageListView({Key key}) : super(key: key);

  @override
  _LDHomePageListViewState createState() => _LDHomePageListViewState();
}

class _LDHomePageListViewState extends State<LDHomePageListView> {
  List<Tweet> _tweets = [
    Tweet(
      text: "Hello, World!",
      user: User(
        displayName: "Steve Jobs",
        handle: "stevejobs",
        imageURL: "https://picsum.photos/200",
      ),
    ),
    Tweet(
      text: "Larry Bird is the best Celtic.",
      user: User(
        displayName: "Magic Johnson",
        handle: "MagicJ",
        imageURL: "https://picsum.photos/200",
      ),
    ),
    Tweet(
      text: "Dash is the coolest Incredible.",
      user: User(
        displayName: "Frozone",
        handle: "wheresMySuperSuit",
        imageURL: "https://picsum.photos/200",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return TweetListViewItem(
          tweet: _tweets[position],
        );
      },
      itemCount: _tweets.length,
    );
  }
}