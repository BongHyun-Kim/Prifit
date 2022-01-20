import 'package:flutter/material.dart';
import '../other/UpperBar.dart';
import '../other/NavBar.dart';
import '../other/BottomBar.dart';
import './GymDetailScreen.dart';

void main() {
  runApp(SearchScreen());
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
              children: [
                _buildSearchBar(), // 검색창
                GymItem(),
                GymItem(),
                GymItem(),
                GymItem(),
                GymItem(),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}

// 검색창
PreferredSize _buildSearchBar() {
  return PreferredSize(
    child: Container(
      padding: EdgeInsets.all(5.0),
      child: Card(
        child: Container(
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.black26,
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black12
                  )
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12
                )
              ),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.white,)
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.location_on_outlined, color: Colors.white,)
              ),
            ),
          ),
        ),
      ),
    ),
    preferredSize: Size.fromHeight(80.0),
  );
}

// 헬스장 목록 부분
class GymItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GymDetail()
                )
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
            ),
            height: 130.0,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Center(
              child: Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  width: deviceSize.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 110.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/sample_image1.jpg',
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      Container(
                        width: deviceSize.width * 0.4,
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '헬스장 이름',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: 200.0,
                              child: Text(
                                '서울특별시 서대문구 경기대로 68 동신빌딩 3층',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 10.0,
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star_border, color: Colors.amber),
                                Icon(Icons.star_border, color: Colors.amber),
                              ],
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}