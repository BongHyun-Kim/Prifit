import 'package:flutter/material.dart';
import '../other/UpperBar.dart';
import '../other/NavBar.dart';
import '../other/BottomBar.dart';

void main() {
  runApp(TrainerDetail());
}

class TrainerDetail extends StatelessWidget {
  const TrainerDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: UpperBar(),
            drawer: NavBar(),
            body: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                // 트레이너 이미지 시작
                FractionallySizedBox(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.7,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/sample_trainer1.png'),
                        fit: BoxFit.fitHeight,
                      )
                    )
                  )
                ),
                // 트레이너 이미지 끝

                // 이름,소속,항목 시작
                FractionallySizedBox(
                  alignment: Alignment.bottomCenter,
                  heightFactor: 0.6,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: panelBody(context)
                  )
                ),
                // 이름, 소속, 항목 끝
              ],
            ),
            bottomNavigationBar: BottomBar(),
          );
        }
      )
    );
  }
}


SingleChildScrollView panelBody(context) {
  double hPadding = 40;

  return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: hPadding),
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _titleSection(),

                // 구매,연락 버튼 시작
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
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
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.message),
                                  Text('메시지')
                                ]
                            )
                        ),
                      )
                    ]
                ),
                // 구매,연락 버튼 끝

                _infoSection(),
              ],
            ),
          ),
          Text(
              '소개',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
          ),
          Container(
              width: 100,
              height: 500,
              child: ColoredBox(color: Colors.grey)
          )
        ],
      )
  );
}

Column _titleSection() {
  return Column(
    children: <Widget>[
      Text(
        '트레이너 이름',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 30
        )
      ),
      SizedBox(height: 8.0),
      Text(
        '소속 헬스장 or 프리랜서',
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 16
        )
      )
    ],
  );
}

Row _infoSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget> [
      _infoCell(title: '제목1', value: '값1'),
      Container(
        width: 1,
        height: 40,
        color: Colors.grey
      ),
      _infoCell(title: '제목2', value: '값2'),
      Container(
        width: 1,
        height: 40,
        color: Colors.grey,
      ),
      _infoCell(title: '제목3', value: '값3')
    ]
  );
}

Column _infoCell({required String title, required String value}) {
  return Column(
    children: <Widget>[
      Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 14
        ),
      ),
      SizedBox(height: 8.0),
      Text(
        value,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14
        )
      )
    ],
  );
}