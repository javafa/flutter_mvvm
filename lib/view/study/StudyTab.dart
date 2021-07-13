import 'package:flutter/material.dart';
import 'package:flutter_mvvm/resource/color/MainColor.dart';
import 'package:flutter_mvvm/view/study/left/LeftFirstView.dart';
import 'package:flutter_mvvm/view/study/left/LeftSecondView.dart';
import 'package:flutter_mvvm/view/study/right/RightSectionView.dart';
import 'package:flutter_mvvm/viewmodel/study/StudyViewModel.dart';
import 'package:get/get.dart';

class StudyTab extends StatelessWidget {
  final StudyViewModel viewModel = Get.put(StudyViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 7,
            child: Obx(() => viewModel.router == StudyRouter.leftfirst ? LeftFirstView() : LeftSecondView()),
          ),
          Expanded(
            flex: 3,
            child: RightSectionView(),
          )
        ],
      ),
      floatingActionButton: _floatingButton(),
    );
  }

  _floatingButton() => FloatingActionButton.extended(
    backgroundColor: MainColor.custom,
    foregroundColor: Colors.black,
    onPressed: () => {
      if (viewModel.router.value == StudyRouter.leftfirst)
        viewModel.updateRouter(StudyRouter.leftsecond)
      else
        viewModel.updateRouter(StudyRouter.leftfirst)
    },
    icon: Icon(Icons.refresh),
    label: Text("change".tr),
  );
}