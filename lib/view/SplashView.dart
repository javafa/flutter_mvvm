import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Launch screen'),
      ),
    );
  }

  Future<bool> delayService() async {
    await new Future.delayed(const Duration(seconds : 5));
    return new Future.value(true);
  }
}