import 'package:flutter/material.dart';
import '../other/UpperBar.dart';
import '../other/BottomBar.dart';
import '../other/NavBar.dart';

void main() {
  runApp(ReviewScreen());
}

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class ReviewModel {
  late bool expanded;
  late String headerItem;
  late String discription;

  ReviewModel(
      {this.expanded: false,
      required this.headerItem,
      required this.discription});
}

class _ReviewScreenState extends State<ReviewScreen> {
  List<ReviewModel> reviewData = <ReviewModel>[
    ReviewModel(
      headerItem: '공지사항',
      discription:
          "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: UpperBar(),
            drawer: NavBar(),
            body: Stack(
              fit: StackFit.expand,
                children: [ListView(
              children: <Widget>[
                Image.asset('assets/sample_image1.jpg'),
                Container(child: Text('A헬스장',
                style:
                TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500))),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),

                  child: Column(
                    children: [
                      _reviewBar("★★★★★", 0.8),
                      _reviewBar("★★★★", 0.4),
                      _reviewBar("★★★", 0.7),
                      _reviewBar("★★", 0.1),
                      _reviewBar("★", 0.3)
                    ],
                  ),
                )
              ],
            )])));
  }
}

Row _reviewBar(String star, double level) {
  return Row(
    children: [
      Expanded(
        flex: 2,
        child: Text(star,
            style: TextStyle(color: Colors.amber), textAlign: TextAlign.right),
      ),
      SizedBox(width: 10),
      Expanded(flex: 6, child: LinearProgressIndicator(value: level)),
      SizedBox(width: 16)
    ],
  );
}
