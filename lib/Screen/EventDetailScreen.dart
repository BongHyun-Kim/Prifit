import 'package:flutter/material.dart';
import '../other/NavBar.dart';
import '../other/UpperBar.dart';
import '../other/BottomBar.dart';

void main(){
  runApp(EventDetailScreen());
}

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: UpperBar(),
            drawer: NavBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child:
                    Image(image: AssetImage('event1.jpg'),
                    fit: BoxFit.cover)
                ),
              ),
            ),
            bottomNavigationBar: BottomBar(),
          );
        }
      )
    );
  }
}
