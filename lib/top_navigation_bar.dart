import 'package:flutter/material.dart';

class LDTopNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12, 5, 8, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 18.0,
            backgroundImage: NetworkImage(
                'https://lh3.googleusercontent.com/wEpdmU0qYb6-FPLeAwhPGpOG9x9YNz5bXKy1DiLled1xr5HtqwFYAUGIfnr7nNgoKN20WhBQTTs1XoC9aLDUDXx1VkjqEAWgLoaSXWbyek3pkltmYDRaNgPvmcswzZFUg95qDYcURfo=w400'),
          ),
          Image.network(
            'https://cdn2.iconfinder.com/data/icons/minimalism/512/twitter.png',
            width: 40.0,
            height: 40.0,
          ),
          Icon(
            Icons.star,
            color: Colors.lightBlue,
            size: 35,
          ),
        ],
      ),
    );
  }
}
