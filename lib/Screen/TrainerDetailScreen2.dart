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
                    SizedBox(height:10.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text("Trainer Infomation"),
                          ),
                          Divider(),
                          ListTile(
                            title: Text(
                                "안녕하세요, 포이나짐 대표 『홍민기 트레이너』입니다.\n대학에서 운동처방재활을 전공으로 공부했기 때문에 보다 전문적인 트레이닝을 제공해드리고 있습니다.\n보디빌딩식의 운동만을 알려드리는 것이 아닌 재활과 기능개선에 특화된 트레이닝을 진행합니다.",
                                style: TextStyle(
                                  fontSize: 12
                                ),
                            ),
                          ),
                          ListTile(
                            title: Text("자격 및 경력사항"),
                          ),
                          ListTile(
                            title: Text("2019 OOO 그랑프리우승"),
                            subtitle: Text(
                              "주최: "
                            ),
                            leading: Icon(Icons.emoji_events, size: 40),
                          ),
                          ListTile(
                            title: Text("2020 OOO 그랑프리우승"),
                            subtitle: Text(
                                "주최: "
                            ),
                            leading: Icon(Icons.emoji_events, size: 40),
                          ),
                          ListTile(
                            title: Text("2020 OOO 그랑프리우승"),
                            subtitle: Text(
                                "주최: "
                            ),
                            leading: Icon(Icons.emoji_events, size: 40),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text("후기"),
                            trailing: Text("더보기>"),
                          ),
                          Divider(),
                          SizedBox(height: 10),
                          ListTile(
                              title: Column(
                              children: <Widget>[
                                  _buildReviewRow("★★★★★", 0.8),
                                  _buildReviewRow("★★★★", 0.4),
                                  _buildReviewRow("★★★", 0.7),
                                  _buildReviewRow("★★", 0.1),
                                  _buildReviewRow("★", 0.3),
                                ],
                              )
                          ),

                          //각 리뷰 구성
                          ListTile(
                            title: Column(
                              children: <Widget>[
                                reviewColumn(),
                                reviewColumn(),
                                reviewColumn(),
                              ],
                            )
                          ),
                        ],
                      )
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

// 후기 프로그레스바
Row _buildReviewRow(String star, double level) {
  return Row(
    children: <Widget> [
      Expanded(
        flex: 2,
        child: Text(
          star,
          style: TextStyle(
            color: Colors.amber,
          ),
          textAlign: TextAlign.right,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
          flex: 6,
          child: LinearProgressIndicator(
            value: level,
          )
      ),
      SizedBox(
        width: 16,
      )
    ],
  );
}

// 후기 각 컬럼 구성
Column reviewColumn() {
  return Column(
    children: [
      SizedBox(height: 10),
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
                width: 50,
                height: 50,
                child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.transparent,
                      child: Image.asset('assets/profile.png'),
                    )
                )
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '작성자 이름',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children: [
                    Text(
                        '★★★★☆',
                        style: TextStyle(
                            color: Colors.amber
                        )
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                        '2022.01.19',
                        style: TextStyle(
                            color: Colors.black26
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 10),
      Text(
          'Over 8+ years of experience and web development and 5+ years of experience in mobile applications development'
      ),
      SizedBox(height: 10)
    ],
  );
}