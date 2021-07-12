import 'package:basic2/view/home/HomeTab.dart';
import 'package:basic2/view/study/StudyTab.dart';
import 'package:basic2/view/study_analysis/StudyAnalysisTab.dart';
import 'package:basic2/view/study_history/StudyHistoryTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainTabView extends StatelessWidget {

  static const TAB_WIDTH = 150.0;
  static const TAB_HEIGHT = 50.0;

  @override
  Widget build(BuildContext context) {

    var tabList = ["home".tr, "study".tr, "study history".tr, "study analysis".tr];

    return DefaultTabController(
      length: tabList.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: TAB_HEIGHT,
          bottom: _tabBar(tabList),
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

  _tabBar(List<String> labels) {
    var tablist = List<Tab>.generate(labels.length, (idx) => _tab(labels[idx]));
    return TabBar(
        isScrollable: true,
        indicatorColor: Colors.white,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white38,
        tabs: tablist,
    );
  }

  _tab(label) => Tab(child:
    Container(child: Text(label),
      alignment:Alignment.center,
      width: TAB_WIDTH,
      height: TAB_HEIGHT)
  );
}