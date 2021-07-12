
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:basic2/repository/model/response/User.dart';

class UserListViewItem extends StatelessWidget {
  UserListViewItem(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    return SizedBox (
      height: 100,
      child: Card (
        child: Row (
          children: [
            _image(this.user.avatar_url),
            _spacer(),
            _button(user.login),
          ],
        ),
      )
    );
  }

  _image(url) => FadeInImage.memoryNetwork(
    placeholder: kTransparentImage, image: url,
  );

  _spacer() => SizedBox(width: 10);

  _button(name) => ElevatedButton(
    onPressed: () => { /* do nothing */ }, // Passing data by using "arguments"
    child: Text( '유저네임: $name',
      style: TextStyle(fontSize: 18),
    ),
  );
}