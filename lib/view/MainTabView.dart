import 'dart:ffi';

import 'package:flutter_mvvm/view/home/HomeTab.dart';
import 'package:flutter_mvvm/view/study/StudyTab.dart';
import 'package:flutter_mvvm/view/study_analysis/StudyAnalysisTab.dart';
import 'package:flutter_mvvm/view/study_history/StudyHistoryTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainTabView extends StatefulWidget {
  @override
  _MainTabView createState() => _MainTabView();
}

class _MainTabView extends State<MainTabView> with SingleTickerProviderStateMixin {

  double _tabWidth = 140.0;
  double _tabHeight = 80.0;

  late TabController _tabController;
  List<String> _tabList = ["home".tr, "study".tr, "study history".tr, "study analysis".tr];

  @override
  void initState() {
    _tabController = new TabController(length: _tabList.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   toolbarHeight: tabHeight,
      //   bottom: _tabBarView(tabList),
      // ),
      body: Column (
        children: [
          _titleBarView(_tabList),
          Expanded(
            child: TabBarView(
              children: [
                HomeTab(),
                StudyTab(),
                StudyHistoryTab(),
                StudyAnalysisTab(),
              ],
              controller: _tabController,
            ),
          )
        ]
      )
    );
  }

  _titleBarView(tabList) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
              height: _tabHeight,
              color: Colors.black
          )
        ),
        Container(
          height: _tabHeight,
          color: Colors.black,
          child: _tabBar(tabList),
        ),
        Expanded(
          flex: 1,
          child: Container(
              height: _tabHeight,
              color: Colors.black
          )
        ),
      ],
    );
  }

  _tabBar(List<String> labels) {
    return TabBar(
      isScrollable: true,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white38,
      indicatorColor: Colors.white,
      tabs: List<Tab>.generate(labels.length, (idx) => _tab(labels[idx])),
      controller: _tabController,
    );
  }

  _tab(label) => Tab(
    child: Container(
      child: Text(label),
      alignment:Alignment.center,
      width: _tabWidth,
      height: _tabHeight,
    )
  );
}