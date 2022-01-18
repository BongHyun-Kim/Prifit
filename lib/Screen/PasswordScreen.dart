import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PasswordScreen());
}

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SingleChildScrollView(
                child:Container(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Column(children: [
                          Text(
                            'PRIFIT',
                            style: TextStyle(fontSize: 50),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.black)
                                  ),
                                  labelText: 'User Name',
                                  labelStyle: TextStyle(color: Colors.grey),
                                  hintText: 'Enter valid mail id as abc@gmail.com'),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ]),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            child: Text('비밀번호 찾기'
                                ''
                                ''),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.black))),
                      ),
                    ]))
            )),
        theme: ThemeData(
            primaryColor: Colors.black,
            accentColor: Colors.black
        ));
  }
}
