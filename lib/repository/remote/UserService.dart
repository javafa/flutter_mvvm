
import 'dart:convert';

import 'package:basic2/repository/model/response/User.dart';

import 'Api.dart';

class UserService {

  static Future<List<User>?> getUsers() async {
    var response = await Api.client.get(Uri.parse('https://api.github.com/users'));
    if (response.statusCode == 200) {
      var users = jsonDecode(response.body)
        .map<User>((item) => User.fromJson(item))
        .toList();
      return users;
    } else {
      return null;
    }
  }
}