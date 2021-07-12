import 'package:basic2/resource/color/MainColor.dart';
import 'package:basic2/viewmodel/home/UserViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'UserListViewItem.dart';

class UserListView extends StatelessWidget {
  final UserViewModel userViewModel = Get.put(UserViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => userViewModel.isLoading.value ? _progress() : _listBuilder()),
      floatingActionButton: _floatingButton(),
    );
  }

  _listBuilder() => ListView.builder(
    itemCount: userViewModel.userList.length,
    itemBuilder: (context, index) => Column(children:[_item(index), _divider()])
  );

  _item(index) => Flexible(child: UserListViewItem(userViewModel.userList[index]));

  _divider() => Container(color: MainColor.grey200, height: 2);

  _progress() => Center(child: CircularProgressIndicator());

  FloatingActionButton _floatingButton() => FloatingActionButton.extended(
    backgroundColor: MainColor.custom,
    foregroundColor: Colors.black,
    onPressed: () => userViewModel.fetchUsers(),
    icon: Icon(Icons.refresh),
    label: Text("refresh".tr),
  );
}