import 'user_model.dart';

class Tweet {
  User user;
  String text;
  // TODO: Add array of images or some generalization of "media".

  Tweet({this.user, this.text});

  String getText() {
    return text;
  }
}