import 'dart:ffi';

import 'package:flutter_mvvm/view/home/HomeTab.dart';
import 'package:flutter_mvvm/view/study/StudyTab.dart';
import 'package:flutter_mvvm/view/study_analysis/StudyAnalysisTab.dart';
import 'package:flutter_mvvm/view/study_history/StudyHistoryTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainTabView extends StatelessWidget {

  double tabWidth = 140.0;
  double tabHeight = 80.0;

  List<String> tabList = ["home".tr, "study".tr, "study history".tr, "study analysis".tr];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabList.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: tabHeight,
          bottom: _tabBarView(tabList),
        ),
        body: TabBarView(
          children: [
            HomeTab(),
            StudyTab(),
            StudyHistoryTab(),
            StudyAnalysisTab(),
          ],
        ),
      ),
    );
  }

  _tabBarView(List<String> labels) {
    return TabBar(
        isScrollable: true,
        indicatorColor: Colors.white,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white38,
        tabs: List<Tab>.generate(labels.length, (idx) => _tabView(labels[idx])),
    );
  }

  _tabView(label) => Tab(
    child: Container(
      child: Text(label),
      alignment:Alignment.center,
      width: tabWidth,
      height: tabHeight)
  );
}