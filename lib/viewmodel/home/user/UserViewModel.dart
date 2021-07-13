import 'package:flutter_mvvm/repository/remote/UserService.dart';
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
      var userResponse = await UserService.getUsers();
      if (userResponse != null) {
        userList.assignAll(userResponse.data ?? List.empty());
      }
    } finally {
      isLoading(false);
    }
  }
}