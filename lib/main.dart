import 'dart:async';

import 'package:example/Screen/LoginScreen.dart';
import 'package:flutter/material.dart';

import './Screen/SplashScreen.dart';
import './Screen/MainScreen.dart';
import './Screen/NoticeEventScreen.dart';
import './Screen/GymDetailScreen.dart';

void main() {
  runApp(MyApp());
}

// 로딩화면
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreen(),
      routes: <String, WidgetBuilder> {
        '/screen1': (BuildContext context) => new SplashScreen(),
        '/screen2' : (BuildContext context) => new LoginScreen(),
        '/screen3' : (BuildContext context) => new MainScreen(),
        '/screen4' : (BuildContext context) => new NoticeScreen(),
        '/screen5' : (BuildContext context) => new GymDetail()
      },
    );
  }
}

