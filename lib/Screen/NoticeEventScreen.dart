import 'package:example/Screen/EventDetailScreen.dart';
import 'package:flutter/material.dart';
import '../other/NavBar.dart';
import '../other/UpperBar.dart';
import '../other/BottomBar.dart';
import '../other/NoticeList.dart';

void main() {
  runApp(MaterialApp(
    home: NoticeScreen()
  ));
}

class NoticeScreen extends StatefulWidget {
  NoticeScreen({Key? key}) : super(key: key);

  @override
  _NoticeScreenState createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
  var event_images = ['banner1.jpg','banner2.jpg','banner3.jpg','banner4.jpg'];
  var event = ['이벤트1', '이벤트2', '이벤트3', '이벤트4'];
  var date = '2022-01-24';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Builder(builder: (context) {
      return Scaffold(
        appBar: UpperBar(),
        drawer: NavBar(),
        body: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints.expand(height: 40),
                  child: TabBar(
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                      indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          insets: EdgeInsets.symmetric(horizontal: 40)),
                      // indicator: BoxDecoration(
                      //     gradient:
                      //         LinearGradient(colors: [Colors.black, Colors.grey]),
                      //     borderRadius: BorderRadius.circular(50),
                      //     color: Colors.black),
                      tabs: [
                        Tab(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text('공지사항'))),
                        Tab(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text('이벤트')))
                      ]),
                ),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TabBarView(children: [
                          NoticeList(),
                          ListView.builder(
                              itemCount: event.length,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetailScreen()));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 30),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: AssetImage(event_images[index]),
                                          fit: BoxFit.fitWidth,
                                          width:
                                              MediaQuery.of(context).size.width *
                                                  0.85,
                                          height:
                                            MediaQuery.of(context).size.height * 0.2
                                        ),
                                        Container(
                                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          width:
                                          MediaQuery.of(context).size.width *
                                              0.845,
                                          decoration: BoxDecoration(color: Colors.white,
                                              boxShadow: [BoxShadow(color: Colors.black, offset: Offset(0.0, 0.0),
                                                  blurRadius:  0.5,
                                              blurStyle: BlurStyle.solid)]),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text(event[index],style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Text(date)
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              })
                        ])))
              ],
            )),
        bottomNavigationBar: BottomBar(),
      );
    }));
  }
}
