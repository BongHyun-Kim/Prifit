import 'package:example/Screen/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:otp_screen/otp_screen.dart';

void main() {
  runApp(OTPSetScreen());
}

class OTPSetScreen extends StatefulWidget {
  const OTPSetScreen({Key? key}) : super(key: key);

  Future<String?> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "1234") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  void moveToNextScreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainScreen()));
  }

  @override
  _OTPSetScreenState createState() => _OTPSetScreenState();

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OtpScreen.withGradientBackground(validateOtp: validateOtp,
            routeCallback: moveToNextScreen,
            topColor: Color(0xFFcc2b5e),
            bottomColor: Color(0xFF753a88),
            themeColor: Colors.white,
            titleColor: Colors.white,
            title: "Phone Number Verification",
            subTitle: "Enter the code sent to \n +919876543210",
            icon: Image.asset('asset/pic_inbody.png',fit: BoxFit.fill,))
    );
  }
}

class _OTPSetScreenState extends State<OTPSetScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text("Otp verification successful", textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.black),
            textDirection: TextDirection.ltr,
          ),
        )
      )
    );
  }
}
