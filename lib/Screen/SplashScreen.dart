import 'dart:async';

import 'package:flutter/material.dart';

import './LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
          () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
          body: Container(
            child:
            Text('Prifit', style: TextStyle(fontSize: 100),),
            alignment: Alignment(0.0, -0.25),
          ),
          bottomNavigationBar: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child:
            Text('TERAENERGY.CORPORATION',textAlign: TextAlign.center),
          )
      ),
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white)
          )
      ),
    );
  }
}