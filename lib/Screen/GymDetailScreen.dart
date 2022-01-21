import 'package:example/Screen/MapScreen.dart';
import 'package:flutter/material.dart';
import '../other/NavBar.dart';
import '../other/UpperBar.dart';

void main() {
  runApp(MaterialApp(
    home: GymDetail()
  ));
}

class GymDetail extends StatelessWidget {
  const GymDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: UpperBar(),
          drawer: NavBar(),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Image.asset('assets/sample_image1.jpg'),

                  // 드롭박스 시작
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Row(
                      children: <Widget> [
                        Expanded(
                            child: buildDropdownButton(['1개월', '3개월', '6개월'], '1개월')
                        ),
                        Expanded(
                            child: buildDropdownButton(['옵션1', '옵션2', '옵션3'], '옵션1')
                        ),
                      ],
                    ),
                  ),
                  // 드롭박스 끝

                  // 헬스장 제목,별점,가격 시작
                  Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                    child: Text(
                      'A 헬스장',
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget> [
                            SizedBox(width: 20.0),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            SizedBox(width: 5.0),
                            Text(
                                "5.0",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14.0
                                )
                            ),
                            SizedBox(width: 20.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                          "1500원",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 30.0
                          )
                      ),
                      SizedBox(width: 20.0),
                    ]
                  ),
                  // 헬스장 제목,별점,가격 끝
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black54,
                  ),

                  // 소개 시작
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    child: Text(
                        "소개",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                      child: Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                            "06:00 ~ 23:59",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.grey.shade600
                            ),
                          ),
                        ]
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                    child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black26,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "서울특별시 서대문구 경기대로 68 동신빌딩 3층",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.grey.shade600
                            ),
                          ),
                        ]
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                    child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.black26,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "0504-3172-6306",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.grey.shade600
                            ),
                          ),
                        ]
                    ),
                  ),
                  // 헬스장 소개 끝
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black54,
                  ),

                  // 편의시설 시작
                  Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "편의시설",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                    'assets/pic_wear.png',
                                    width: 60,
                                    height: 60,
                                    color: Colors.black,
                                ),
                                Text(
                                  '운동복',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                    'assets/pic_towel.png',
                                    width: 60,
                                    height: 60,
                                    color: Colors.black,
                                ),
                                Text(
                                  '수건',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                    'assets/pic_locker.png',
                                    width: 60,
                                    height: 60,
                                    color: Colors.grey,
                                ),
                                Text(
                                  '락커',
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                    'assets/pic_shower.png',
                                    width: 60,
                                    height: 60,
                                    color: Colors.black,
                                ),
                                Text(
                                  '샤워실',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/pic_wifi.png',
                                  width: 60,
                                  height: 60,
                                  color: Colors.grey,
                                ),
                                Text(
                                  '와이파이',
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/pic_parking.png',
                                  width: 60,
                                  height: 60,
                                  color: Colors.grey,
                                ),
                                Text(
                                  '주차장',
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/pic_inbody.png',
                                  width: 60,
                                  height: 60,
                                  color: Colors.black,
                                ),
                                Text(
                                  '체성분 검사',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/pic_zzimzil.png',
                                  width: 60,
                                  height: 60,
                                  color: Colors.grey,
                                ),
                                Text(
                                  '찜질방',
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // 편의시설 끝
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black54,
                  ),

                  // 강사진 시작
                  Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '강사진',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "더보기>",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        trainerBottom,
                      ],
                    ),
                  ),
                  // 강사진 끝
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black54,
                  ),

                  // 후기 시작
                  Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '후기',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '더보기>',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        _buildReviewRow("★★★★★", 0.8),
                        _buildReviewRow("★★★★", 0.4),
                        _buildReviewRow("★★★", 0.7),
                        _buildReviewRow("★★", 0.1),
                        _buildReviewRow("★", 0.3),

                        //각 리뷰 구성
                        reviewColumn(),
                        reviewColumn(),
                        reviewColumn(),
                      ],
                    ),
                  ),
                  // 후기 끝

                  Divider(
                    height: 10,
                    color: Colors.black54,
                  ),
                  
                  // 지도 시작
                  Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                    child: Column(
                      children: [
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '지도',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Image.asset('assets/sample_image1.jpg')
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black54,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MapScreen()));
                            },
                            child: Text('길찾기')
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 지도 끝
                ],
              ),
            ],
          ),

          bottomNavigationBar: BottomAppBar(
              child: Container(
                height: 130,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _buildAddToCartButton(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                                Text('Home', style: TextStyle(fontSize: 10, color: Colors.grey),)
                              ],
                            )
                          ],
                        ), Row(
                          children: [
                            Column(
                              children: [
                                IconButton(onPressed: () {}, icon: Icon(Icons.message_rounded)),
                                Text('Message', style: TextStyle(fontSize: 10, color: Colors.grey),)
                              ],
                            )
                          ],
                        ), Row(
                          children: [
                            Column(
                              children: [
                                IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                                Text('MyPage', style: TextStyle(fontSize: 10, color: Colors.grey),)
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
          ),
        )
    );
  }

  Widget buildDropdownButton(List<String> items, String selectedValue) {
    return DropdownButton<String> (
      isExpanded: true,
      value: selectedValue,
      onChanged: (_) {},
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String> (
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget _buildAddToCartButton() {
    return Row(
      children: <Widget> [
        Expanded (
          child: Container(
            height: 65,
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0
            ),
            child: RaisedButton (
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
              ),
              onPressed: () {},
              child: Text("회원권 구매하기"),
              color: Colors.black,
              textColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

// 하단에 넣을 강사진
final Widget trainerBottom = Column(
  children: <Widget> [
    Container(
      height: 210,
      child: ListView(scrollDirection: Axis.horizontal, children: trainerCards),
    )
  ],
);

// 강사 목록
List<TrainerCards> trainerCards = [
  TrainerCards(
    "assets/sample_image1.jpg",
    "트레이너1",
    "소개",
    "10",
    "500",
    "440",
  ),
  TrainerCards(
    "assets/sample_image2.jpg",
    "트레이너2",
    "소개",
    "10",
    "500",
    "440",
  ),
  TrainerCards(
    "assets/sample_image3.jpg",
    "트레이너3",
    "소개",
    "10",
    "500",
    "440",
  ),
];

// 강사 클래스
class TrainerCards extends StatelessWidget {
  final String imagePath, trainerName, descipt, discount, oldPrice, newPrice;
  TrainerCards(this.imagePath, this.trainerName, this.descipt, this.discount, this.oldPrice, this.newPrice);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Stack(
          children: <Widget> [
            Container(
              width: 160,
              height: 210,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 10,
              bottom: 10,
              width: 145,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Text(
                        trainerName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1
                        ),
                      ),
                      Text(
                        descipt,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Text(
                      "$discount%",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14
                      ),
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      )
    );
  }
}
// 강사 클래스 끝

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