import 'package:flutter/material.dart';
import './NoticeContent.dart';

class NoticeList extends StatefulWidget {
  const NoticeList({Key? key}) : super(key: key);

  @override
  _NoticeListState createState() => _NoticeListState();
}

class _NoticeListState extends State<NoticeList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: noticeData.length,
        itemBuilder: (BuildContext context, int index) {
          return ExpansionPanelList(
            animationDuration: Duration(milliseconds: 1000),
            dividerColor: Colors.red,
            elevation: 1,
            children: [
              ExpansionPanel(
                body: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 30),
                        Text(
                          noticeData[index].discription,
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15,
                              letterSpacing: 0.3,
                              height: 1.3),
                        )
                      ],
                    )),
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Container(
                      padding: EdgeInsets.all(10),
                      child: Text(noticeData[index].headerItem,
                          style: TextStyle(
                              color: noticeData[index].colorsItem,
                              fontSize: 18)));
                },
                isExpanded: noticeData[index].expanded,
              )
            ],
            expansionCallback: (int item, bool status) {
              setState(() {
                noticeData[index].expanded = !noticeData[index].expanded;
              });
            },
          );
        });
  }
  List<NoticeModel> noticeData = <NoticeModel>[
    NoticeModel(
        headerItem: '공지사항',
        discription:
        "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.green),
  ];
}
