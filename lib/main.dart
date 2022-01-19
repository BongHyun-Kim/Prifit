import 'dart:async';

import 'package:flutter/material.dart';

import './Screen/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

// 로딩화면
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreen()
    );
  }
}

