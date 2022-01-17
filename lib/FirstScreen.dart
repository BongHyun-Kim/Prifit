import 'package:flutter/material.dart';

void main(){
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
