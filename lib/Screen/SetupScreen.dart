import 'package:flutter/material.dart';
import '../other/UpperBar.dart';
import '../other/NavBar.dart';
import '../other/BottomBar.dart';
import '../'
void main(){
  runApp(SetupScreen());
}

class SetupScreen extends StatefulWidget {
  const SetupScreen({Key? key}) : super(key: key);

  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: UpperBar(),
        drawer: NavBar(),
        body: ListView(
          children: [
        ExpansionPanelList(
        animationDuration: Duration(milliseconds: 1000),
        dividerColor: Colors.red,
        elevation: 1,
        children: [
          ExpansionPanel(
            body: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Text('알림설정',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 15,
                          letterSpacing: 0.3,
                          height: 1.3),
                    )
                  ],
                )),
            headerBuilder: (BuildContext contextf, bool isExpanded) {
              return Container(
                  padding: EdgeInsets.all(10),
                  child: Text('알림을 어떻게 울리지',
                      style: TextStyle(fontSize: 18)));
            },
            isExpanded: noticeData[index].expanded,
          )
        ],
        expansionCallback: (int item, bool status) {
          setState(() {
            noticeData[index].expanded = !noticeData[index].expanded;
          });
        },
      );
          ],
        ),
        bottomNavigationBar: BottomBar(),
      )
    );
  }
}
