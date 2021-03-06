
import 'package:flutter_mvvm/repository/model/response/UserResponse.dart';
import 'package:flutter_mvvm/repository/remote/UserService.dart';

import 'local/UserDao.dart';
import 'model/response/User.dart';

class UserRepository {

  static Future<UserResponse?> getUsers() async {

    try {
      var users = await UserService.getUsers();
      // 쓰레드 분기
      // UserDao.insertUsers(users)
      return users;
    } catch (e) {
      return UserDao.loadUsers();
    }
  }
}