import 'package:flutter/material.dart';
import 'package:larry_dash/tweet_model.dart';
import 'package:larry_dash/user_model.dart';

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
    User user = tweet.user;

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 22,
              backgroundImage: NetworkImage(user.imageURL),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        user.displayName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "@" + user.handle,
                      ),
                    ],
                  ),
                  Text(
                    tweet.text,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Align(
                              child: Icon(
                                Icons.reply,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(width: 3),
                            Text(tweet.replies.toString()),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Align(
                              child: Icon(
                                Icons.favorite,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(width: 3),
                            Text(tweet.replies.toString()),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Align(
                              child: Icon(
                                Icons.restore,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(width: 3),
                            Text(tweet.replies.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
