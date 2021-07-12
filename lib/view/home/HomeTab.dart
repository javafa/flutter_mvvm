import 'package:flutter_mvvm/view/home/user/UserListView.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserListView(),
    );
  }
}