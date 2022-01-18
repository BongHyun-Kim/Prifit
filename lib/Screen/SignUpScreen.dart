import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(SignUpScreen());
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
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
                                borderSide: BorderSide(width: 1, color: Colors.black)),
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
                                borderSide: BorderSide(width: 1, color: Colors.black)),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.grey),
                            hintText: 'Enter secure password'),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.black)),
                            labelText: 'Password Check',
                            labelStyle: TextStyle(color: Colors.grey),
                            hintText: 'Enter same secure password'),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.black)),
                            labelText: 'Name',
                            labelStyle: TextStyle(color: Colors.grey),
                            hintText: 'Enter your Full Name'),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.black)),
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(color: Colors.grey),
                            hintText: 'Enter your Phone Number'),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.black)),
                            labelText: 'Address',
                            labelStyle: TextStyle(color: Colors.grey),
                            hintText: 'Enter your Address'),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    Container(
                      width:400,
                      height: 50,
                      // padding: EdgeInsets.all(10),
                      child:
                      CheckboxListTile(
                          title: Text('PRIFIT 이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), 프로모션 종보 수신(선택)에 모두 동의합니다.',
                            style: TextStyle(fontSize: 13),),
                          controlAffinity: ListTileControlAffinity.leading,
                          value: _isChecked,
                          onChanged: (value){
                            setState((){
                              _isChecked = value!;
                            });
                          }),
                    ),
                    Container(
                        margin: EdgeInsets.all(15),
                        width: 400,
                        height: 50,
                        child:
                        ElevatedButton(onPressed: (){}, child: Text('회원가입', style: TextStyle(fontSize: 15),),
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),)
                    )]),
                ))));
  }
}
