import 'user_model.dart';

class Tweet {
  User user;
  String text;
  // TODO: Add array of images or some generalization of "media".
  int replies;
  int likes;
  int retweets;

  bool liked;
  bool retweeted;

  Tweet({this.user, this.text, this.replies = 0, this.likes = 0, this.retweets = 0, this.liked = false, this.retweeted = false});

  String getText() {
    return text;
  }
}