import 'package:flutter/material.dart';
import '../Screen/MainScreen.dart';


class BottomBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      IconButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
                      }, icon: Icon(Icons.home)),
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
          ),
        )
    );
  }
}
