import 'package:flutter_mvvm/resource/string/I18n.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'view/MainTabView.dart';

void main() {
  runApp(Root());
}

class Root extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home : SafeArea(
          child: MainTabView()
      ),
      translations: I18n(),
      fallbackLocale: Locale('en', 'US'),
    );
  }
}