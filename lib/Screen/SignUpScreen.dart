import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SignUpScreen()));
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List<bool> _selection = List.generate(2, (index) => false);
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
          builder: (context) {
            return Scaffold(
                body: SingleChildScrollView(
                    child: Center(
                      child: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(children: [
            Text(
              'PRIFIT',
              style: TextStyle(fontSize: 50),
            ),
            Container(
              width: (MediaQuery.of(context).size.width)*0.85, // 2022.01.19 김봉현(컨테이너 생성 및 크기 화면의 85%로 조정)
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0), // 2022.01.19 김봉현(컨테이너 패딩 좌,우,상 15 설정)
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
            Container(
              width: (MediaQuery.of(context).size.width)*0.85, // 2022.01.19 김봉현(컨테이너 생성 및 크기 화면의 85%로 조정)
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0), // 2022.01.19 김봉현(컨테이너 패딩 좌,우,상 15 설정)
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
            Container(
              width: (MediaQuery.of(context).size.width)*0.85, // 2022.01.19 김봉현(컨테이너 생성 및 크기 화면의 85%로 조정)
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0), // 2022.01.19 김봉현(컨테이너 패딩 좌,우,상 15 설정)
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
            Container(
              width: (MediaQuery.of(context).size.width)*0.85, // 2022.01.19 김봉현(컨테이너 생성 및 크기 화면의 85%로 조정)
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0), // 2022.01.19 김봉현(컨테이너 패딩 좌,우,상 15 설정)
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
            Container(
              width: (MediaQuery.of(context).size.width)*0.85, // 2022.01.19 김봉현(컨테이너 생성 및 크기 화면의 85%로 조정)
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0), // 2022.01.19 김봉현(컨테이너 패딩 좌,우,상 15 설정)
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
            Container(
              width: (MediaQuery.of(context).size.width)*0.85, // 2022.01.19 김봉현(컨테이너 생성 및 크기 화면의 85%로 조정)
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0), // 2022.01.19 김봉현(컨테이너 패딩 좌,우,상 15 설정)
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
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
              child: ToggleButtons(
                selectedColor: Colors.white,
                fillColor: Colors.black,
                children: [
                  Container(
                      width: (MediaQuery.of(context).size.width)*0.38,
                      child:
                      Text('남성', textAlign: TextAlign.center)),
                  Container(
                      width: (MediaQuery.of(context).size.width)*0.38,
                      child:
                      Text('여성', textAlign: TextAlign.center))
                ], isSelected: _selection,
                onPressed: (int index){
                  setState(() {
                      for(int i = 0; i < _selection.length; i++){
                        _selection[i] = i == index;
                      }
                  });
                },),
            ), // 2022.01.19 김봉현(성별 선택 토글버튼 추가)
            Container(
              width: (MediaQuery.of(context).size.width)*0.85, // 2022.01.19 김봉현(컨테이너 크기 화면의 85%로 조정)
              // padding: EdgeInsets.all(10),
              child: CheckboxListTile(
                  title: Text(
                      'PRIFIT 이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), 프로모션 종보 수신(선택)에 모두 동의합니다.',
                      style: TextStyle(fontSize: 13),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _isChecked,
                  onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                  },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0), // 2022.01.19 김봉현(패딩 좌, 우 15 추가)
                margin: EdgeInsets.all(15),
                width: (MediaQuery.of(context).size.width)*0.85, // 2022.01.19 김봉현(컨테이너 크기 화면의 85%로 조정)
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                      '회원가입',
                      style: TextStyle(fontSize: 15),
                  ),
                  style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black)),
                ))
      ]),
    ),
                    )));
          }
        ));
  }
}
