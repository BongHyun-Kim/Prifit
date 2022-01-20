import 'package:flutter/material.dart';
import '../other/UpperBar.dart';
import '../other/NavBar.dart';
import '../other/BottomBar.dart';

void main() {
  runApp(TrainerDetail2());
}

class TrainerDetail2 extends StatelessWidget {
  const TrainerDetail2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: UpperBar(),
        drawer: NavBar(),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[

              // 트레이너 사진 시작
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                    'assets/sample_trainer2.jpg',
                    fit: BoxFit.fill,
                ),
              ),
              // 트레이너 사진 끝

              Container(
                margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(16.0),
                      margin: EdgeInsets.only(top: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          // 이름, 소속헬스장 시작
                          Container(
                            margin: EdgeInsets.only(left: 96.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '트레이너 이름',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: Text('소속 헬스장 이름'),
                                  subtitle: Text('트레이너'),
                                ),
                              ],
                            ),
                          ),
                          // 이름, 소속헬스장 끝

                          SizedBox(height: 5.0),

                          // 결제, 연락버튼 시작
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 150,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black
                                    ),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Icon(Icons.credit_card_outlined),
                                          Text('정기권구매')
                                        ]
                                    )
                                ),
                              ),
                              SizedBox(
                                width: 150,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black
                                    ),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Icon(Icons.message),
                                          Text('메시지보내기')
                                        ]
                                    )
                                ),
                              ),
                            ],
                          ),
                          // 결제, 연락버튼 끝

                        ],
                      ),
                    ),

                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/sample_trainer2.jpg'),
                          fit: BoxFit.cover,
                        )
                      ),
                      margin: EdgeInsets.only(left: 16.0),
                    )
                  ],
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
