import 'package:example/Screen/OTPSetScreen.dart';
import 'package:flutter/material.dart';
import '../other/UpperBar.dart';
import '../other/NavBar.dart';
import '../other/BottomBar.dart';

void main(){
  runApp(MaterialApp(
    home: OTPSetupScreen()
  ));
}

class OTPSetupScreen extends StatefulWidget {
  OTPSetupScreen({Key? key}) : super(key: key);

  @override
  _OTPSetupScreenState createState() => _OTPSetupScreenState();
}

class _OTPSetupScreenState extends State<OTPSetupScreen> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: UpperBar(),
        drawer: NavBar(),
        body: Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          child:
          ListView(
            children: [
              Container(
                  height: 70,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.white),
                child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child:
                          Text('잠금', style: TextStyle(fontSize: 18),)
                      ),
                      Container(
                        child:
                        Switch(onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                          value: _value,
                          activeColor: Colors.black,
                          inactiveTrackColor: Colors.grey,
                          inactiveThumbColor: Colors.black26,),
                      )
                    ],
                  )
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OTPSetScreen()));
                },
                child: Container(
                    height: 70,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.white),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child:
                            Text('비밀번호설정', style: TextStyle(fontSize: 18),)
                        ),
                        Container(
                          child:
                            Icon(Icons.navigate_next_rounded, color: Colors.grey,)
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      )
    );
  }
}
