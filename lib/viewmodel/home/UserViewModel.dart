import 'package:basic2/repository/remote/UserService.dart';
import 'package:get/get.dart';

class UserViewModel extends GetxController {
  var isLoading = true.obs;
  var userList = List<dynamic>.empty().obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      var users = await UserService.getUsers();
      if (users != null) {
        userList.assignAll(users);
      }
    } finally {
      isLoading(false);
    }
  }
}