import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(QrScreen());
}

class QrScreen extends StatefulWidget {
  const QrScreen({Key? key}) : super(key: key);

  @override
  _QrScreenState createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                actions: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.close, color: Colors.black, size: 30,))
                ],
              ),
      body: Center(
        child: Column(
              children: [
                Text('QR Check-In', style: TextStyle(fontSize: 30),),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child:
                    QrImage(
                        data: '가나다라마바사아자차카타파하123456789abcdefghijklmnopqrstuvwxyz',
                        backgroundColor: Colors.white,
                        size: 250)
                ),
                Container(
                    width: (MediaQuery.of(context).size.width)*0.85, // 2022.01.19 김봉현(컨테이너 생성 및 크기 화면의 85%로 조정)
                    child: Text('When you in to the Facility, you have to Validate the QrCode'))
              ],
        ),
      )
    );
          }
        ));
  }
}
