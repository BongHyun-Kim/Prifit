import 'package:flutter/material.dart';
import '../other/UpperBar.dart';
import '../other/NavBar.dart';
import '../other/BottomBar.dart';

void main(){
  runApp(SetupScreen());
}

class SetupScreen extends StatefulWidget {
  const SetupScreen({Key? key}) : super(key: key);

  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  bool _value = false;
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: UpperBar(),
        drawer: NavBar(),
        body: Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: ListView(
            children: [
          ExpansionPanelList(
          animationDuration: Duration(milliseconds: 1000),
          dividerColor: Colors.red,
          elevation: 1,
          children: [
            ExpansionPanel(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text('공지', style: TextStyle(fontSize: 15),)
                        ),
                        Container(
                          child:
                          Transform.scale( scale: 0.8,
                            child: Switch(onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            }, value: _value,
                              activeColor: Colors.black,
                              inactiveTrackColor: Colors.grey,
                              inactiveThumbColor: Colors.black26,),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text('메시지', style: TextStyle(fontSize: 15),)
                        ),
                        Container(
                          child:
                          Transform.scale( scale: 0.8,
                            child: Switch(onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            }, value: _value,
                              activeColor: Colors.black,
                              inactiveTrackColor: Colors.grey,
                              inactiveThumbColor: Colors.black26,),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text('이벤트', style: TextStyle(fontSize: 15),)
                        ),
                        Container(
                          child:
                          Transform.scale( scale: 0.8,
                            child: Switch(onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            }, value: _value,
                              activeColor: Colors.black,
                              inactiveTrackColor: Colors.grey,
                              inactiveThumbColor: Colors.black26,),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              headerBuilder: (BuildContext context, isExpanded) {
                return Container(
                    padding: EdgeInsets.all(10),
                    child: Text('알림설정',
                        style: TextStyle(fontSize: 18)));
              },
              isExpanded: _isExpanded,
              canTapOnHeader: true,
            ),
          ],
          expandedHeaderPadding: EdgeInsets.all(0),
          expansionCallback: (int panelIndex,bool isExpanded){
            _isExpanded = !_isExpanded;
            setState(() {

            });
          },
      ),Container(
                height:70,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.white,
                 ),

                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('자동로그인', style: TextStyle(fontSize: 18),)
                    ),
                    Container(
                      child:
                      Switch(onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }, value: _value,
                      activeColor: Colors.black,
                      inactiveTrackColor: Colors.grey,
                      inactiveThumbColor: Colors.black26,),
                    )
                  ],
                )

              ),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                    height:70,
                    padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                    decoration: BoxDecoration(color: Colors.white,
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text('잠금설정', style: TextStyle(fontSize: 18),)
                        ),
                        Container(
                          child:
                            Icon(Icons.navigate_next_rounded, color: Colors.grey,)
                        )
                      ],
                    )

                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      )
    );
  }
}
