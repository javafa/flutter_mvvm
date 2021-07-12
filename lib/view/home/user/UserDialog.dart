import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_mvvm/repository/model/response/User.dart';

class UserDialog extends StatelessWidget {
  final User user;

  UserDialog(this.user);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        this.user.login,
        style: Theme.of(context).textTheme.headline1,
      ),
      content: Center (
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: this.user.avatar_url,
        ),
      ),
    );
  }
}