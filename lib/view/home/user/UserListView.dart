
import 'package:flutter_mvvm/resource/color/MainColor.dart';
import 'package:flutter_mvvm/viewmodel/home/user/UserViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'UserListViewItem.dart';

class UserListView extends StatelessWidget {
  final UserViewModel userViewModel = Get.put(UserViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => userViewModel.isLoading.value ? _progress() : _listView()),
    );
  }

  _listView() => ListView.builder(
    itemCount: userViewModel.userList.length,
    itemBuilder: (context, index) => Column(children:<Widget>[_item(index), _divider()])
  );

  _item(index) => UserListViewItem(userViewModel.userList[index]);

  _divider() => Container(color: MainColor.grey200, height: 2);

  _progress() => Center(child: CircularProgressIndicator());
}