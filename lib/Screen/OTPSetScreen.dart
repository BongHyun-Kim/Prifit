import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

void main(){
  runApp(OTPSetScreen());
}

class OTPSetScreen extends StatelessWidget {
  const OTPSetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Center(
              child: FractionallySizedBox(
                widthFactor: 0.7,
                heightFactor: 0.8,
                child: Column(
                  children: [
                    Image(image: AssetImage('locked.png'), width: MediaQuery.of(context).size.width * 0.2,),
                    Text('PRIFIT에서 사용할 비밀번호를 입력해주세요'),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: OTPTextField(
                        length: 6,
                        width: MediaQuery.of(context).size.width * 0.7,
                        fieldWidth: 50,
                        style: TextStyle(
                          fontSize: 17,
                        ),fieldStyle: FieldStyle.underline,
                        textFieldAlignment: MainAxisAlignment.center,
                      ),
                    )
                  ],
                ),
              ),
            )

          );
        }
      )
    );
  }
}
