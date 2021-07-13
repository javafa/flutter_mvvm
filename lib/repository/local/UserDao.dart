
import 'package:flutter_mvvm/repository/model/response/User.dart';
import 'package:flutter_mvvm/repository/model/response/UserResponse.dart';

class UserDao {
  static bool insertUsers(List<User> users) {

    // 여기서 로컬 DB 에 데이터를 저장

    return true;
  }

  static UserResponse loadUsers() {
    return UserResponse(null, false, "");
  }
}