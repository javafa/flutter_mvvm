import 'package:flutter_mvvm/repository/UserRepository.dart';
import 'package:flutter_mvvm/repository/model/response/User.dart';
import 'package:get/get.dart';
class RootViewModel extends GetxController
{
  var isLoading = true.obs;
  var userList = List<User>.empty().obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      var products = await UserRepository.getUsers();
      if (products != null) {
        userList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}