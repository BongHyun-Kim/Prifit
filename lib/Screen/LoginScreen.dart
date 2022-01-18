import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './PasswordScreen.dart';
import './SignUpScreen.dart';
import './MainScreen.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.black)
                                ),
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.grey),
                                hintText: 'Enter secure password'),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: CheckboxListTile(
                              title: Text(
                                '자동 로그인',
                                style: TextStyle(fontSize: 15),
                              ),
                              value: _isChecked,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (value) {
                                setState(() {
                                  _isChecked = value!;
                                });
                              }),
                        ),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()
                                )
                            );
                          },
                          child: Text('로그인'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.black))),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PasswordScreen()
                                  )
                              );
                            },
                            child: Text('비밀번호찾기'),
                            style: TextButton.styleFrom(primary: Colors.black),
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUpScreen()
                                        )
                                    );
                                  },
                                  child: Text('회원가입'),
                                  style: TextButton.styleFrom(primary: Colors.black))
                            ],
                          )
                        ],
                      ),
                    )
                  ]))
            )),
    theme: ThemeData(
      primaryColor: Colors.black,
      accentColor: Colors.black
    ));
  }
}
