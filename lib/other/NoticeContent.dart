import'package:flutter/material.dart';

class NoticeModel{
  bool expanded;
  String headerItem;
  String discription;
  Color colorsItem;

  NoticeModel({this.expanded: false,  required this.headerItem,  required this.discription,  required this.colorsItem});
}

class NoticeContent extends StatelessWidget {
  const NoticeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
