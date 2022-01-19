import 'package:flutter/material.dart';
import '../other/NavBar.dart';
import '../other/UpperBar.dart';
import '../other/BottomBar.dart';
import '../other/NoticeContent.dart';
import '../other/NoticeList.dart';

void main() {
  runApp(NoticeScreen());
}

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  _NoticeScreenState createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
          builder: (context) {
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
                                borderSide: BorderSide(
                                    color: Colors.black, width: 2),
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
                                ListView(children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Expanded(
                                          child: Row(
                                            children: [Container(
                                              width: (MediaQuery.of(context).size.width) * 0.3,
                                              child:
                                              Image(image: AssetImage('assets/banner1.jpg'), fit:BoxFit.cover),
                                            ),
                                              Container(
                                                width: (MediaQuery.of(context).size.width) * 0.3,
                                                child:
                                                Image(image: AssetImage('assets/banner1.jpg'), fit:BoxFit.cover),
                                              ),
                                              Container(
                                                width: (MediaQuery.of(context).size.width) * 0.3,
                                                child:
                                                Image(image: AssetImage('assets/banner1.jpg'), fit:BoxFit.cover),
                                              ),
                                              Container(
                                                width: (MediaQuery.of(context).size.width) * 0.3,
                                                child:
                                                Image(image: AssetImage('assets/banner1.jpg'), fit:BoxFit.cover),
                                              ),
                                              Container(
                                                width: (MediaQuery.of(context).size.width) * 0.3,
                                                child:
                                                Image(image: AssetImage('assets/banner1.jpg'), fit:BoxFit.cover),
                                              ),
                                              Container(
                                                width: (MediaQuery.of(context).size.width) * 0.3,
                                                child:
                                                Image(image: AssetImage('assets/banner1.jpg'), fit:BoxFit.cover),
                                              ),
                                              Container(
                                                width: (MediaQuery.of(context).size.width) * 0.3,
                                                child:
                                                Image(image: AssetImage('assets/banner1.jpg'), fit:BoxFit.cover),
                                              )],
                                          ))
                                    )
                                    ,
                                  )
                                ],)
                              ])))
                    ],
                  )),
              bottomNavigationBar: BottomBar(),
            );
          }
        ));
  }

  List<NoticeModel> noticeData = <NoticeModel>[
    NoticeModel(
        headerItem: 'Android',
        discription:
        "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.green,
        img: 'assets/images/android_img.png'),
  ];
}
