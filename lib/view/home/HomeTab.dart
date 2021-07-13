import 'package:flutter_mvvm/resource/color/MainColor.dart';
import 'package:flutter_mvvm/view/home/user/UserListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/viewmodel/home/user/UserViewModel.dart';
import 'package:get/get.dart';

class HomeTab extends StatelessWidget {

  final UserViewModel userViewModel = Get.put(UserViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserListView(),
      floatingActionButton: _floatingButton(),
    );
  }


  _floatingButton() => FloatingActionButton.extended(
    backgroundColor: MainColor.custom,
    foregroundColor: Colors.black,
    onPressed: () => userViewModel.fetchUsers(),
    icon: Icon(Icons.refresh),
    label: Text("refresh".tr),
  );
}