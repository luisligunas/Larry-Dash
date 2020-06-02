import 'user_model.dart';

class Tweet {
  User user;
  String text;
  // TODO: Add array of images or some generalization of "media".
  int replies = 0;
  int likes = 0;
  int retweets = 0;

  Tweet({this.user, this.text, this.replies, this.likes, this.retweets});

  String getText() {
    return text;
  }
}