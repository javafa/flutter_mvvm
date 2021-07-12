
import 'package:basic2/repository/model/response/User.dart';

class UserDao {
  static bool insertUsers(List<User> users) {

    // 여기서 로컬 DB 에 데이터를 저장

    return true;
  }

  static List<User> loadUsers() {
    return List<User>.empty();
  }
}