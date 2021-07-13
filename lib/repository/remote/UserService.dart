
import 'dart:convert';
import 'package:flutter_mvvm/repository/model/response/UserResponse.dart';
import 'package:flutter_mvvm/repository/model/response/User.dart';

import 'Api.dart';

class UserService {

  static Future<UserResponse?> getUsers() async {
    var response = await Api.get('/crud');
    if (response.statusCode == 200) {
      return UserResponse.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  static Future<UserResponse?> postUser(User user) async {
    var response = await Api.post('/crud', body: user.toJson());
    if (response.statusCode == 200) {
      return UserResponse.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}