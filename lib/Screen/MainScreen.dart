import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../other/NavBar.dart';
import '../other/UpperBar.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        endDrawer: Drawer( ),
        appBar: UpperBar(),
        drawer: NavBar(),
      ),
      theme: ThemeData(
          textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white))),
    );
  }
}