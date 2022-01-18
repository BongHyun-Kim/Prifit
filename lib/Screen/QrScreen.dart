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
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.close, color: Colors.black, size: 30,))
            ],
          ),
      body: Column(
        children: [
          Text('QR Check-In', style: TextStyle(fontSize: 30),),
          Container(
            alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child:
              QrImage(
                  data: "http://www.naver.com",
                  backgroundColor: Colors.white,
                  size: 250)
          ),
          Text('When you in to the Facility, you have to Validate the QrCode')
        ],
      )
    ));
  }
}
